<?php
if(comments_open()){ ?>
<section class="section-comment">
     <div class="wrap-title">
	<h2 class="ui-title-type-1 ui-title-type-1_sm">
		<?php comments_number('0 comments','1 comment','% comments');?>
 	</h2>
	 <div class="ui-decor-wrap">
			 <div class="ui-decor-type-2"></div>
	</div>
  </div>
	<?php
	echo '<ul class="comments-list list-unstyled">';
	$commentForm_arguments = array(
		'fields' => array(
			'author' => '
			<div class="col-md-6">
				<input type="text" placeholder="Name" class="form-control"/>
			</div>',
			'email' => '<div class="col-md-6">
                        <input type="email" placeholder="Email" class="form-control"/>
                      </div>',
		),
		'comment_field' 		 =>'<div class="col-xs-12">
                        <textarea rows="6" placeholder="Comments" class="form-control"></textarea>
                      </div>',
		'class_submit' 			=> 'ui-form__btn btn btn-primary btn-sm btn-effect',
		'comment_notes_before' => '',
		'title_reply'   	=> 'Add your Comment',
		'title_reply_to'	=> 'Add a Reply To [%s]',
		
	);
	comment_form($commentForm_arguments);
	$comments_arguments = array(
		'max_depth'			 => 3,
		 'type'    			 => 'comment',
		'avatar_size'        => 64,
		'reverse_top_level' => true,
		
	);
	wp_list_comments($comments_arguments);
	echo '</ul>';
}else{
	
	echo 'Sorry Comments Are Disabled';
}