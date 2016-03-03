#Function: 		PC.sce
#Description:	Contains the subroutines used in the experiment
#Programmer:	Connor Reid (Psy Technician)
#Created@:		08/08/2013
#LastMod@:		02/03/2013
#ModifiedBy:	John Zhong
#Copyright@: 	School Of Psychology, Griffith University
#-------------------------------------------------------------------
pcl_file = "PC.pcl";
scenario = "PC";
response_matching = simple_matching;

default_font_size = 20;
default_text_color=255,255,255;
default_background_color = 0,0,0;
active_buttons = 15;
button_codes = 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15;		#1=SPACE,v,b,n,a,s,d,f,g,h,j,k,l,;,'

#write_codes = true;		#write codes to port
#pulse_width = 20; 		#if port is parallel
#----------------Instruction and blank bitmaps -----------
# 
begin;

picture {} default;

text{ caption = "You will be presented with a series of dog images on the screen. 
					\n\nFrom time to time you will also hear audio following the images.
					\n\nPress SPACE bar to continue."; }text_1;
text{ caption = "Please pay attention to the images on the screen and the audio via 
						\n\nyour headphones throughout the experiment.
						\n\nPress SPACE bar to continue."; }text_2;
text{ caption = "When you see a dog on the screen, you will see the word \"Rate Now\" appear above the image.
						\n\nWhen you see those words, press the key which most closely describes how likely it is that
						\n\nthe audio will be played.
						\n\nPress SPACE bar to continue."; }text_3;
text{ caption = "Please rate the degree of pleasantness of the dog you just saw"; }reaction_text;
text{caption="Rate Now";}rate_now_text;
text{caption="Please take a break ...Press SPACE bar to continue";}break_text;
text{caption="Now you will do a practice trial before you starting
					\n\nPress SPACE bar to continue.";}practice_text;

#cross fixation
line_graphic {
   coordinates = -7, 0, 7, 0;
   coordinates = 0, -7, 0, 7;
   line_width = 3;
   line_color = 255,255,255;
}fixation_line;

picture {		
		text {caption = "+"; font_size = 30; font_color = 255,255,255;}fixation_cross_txt;
		x = 0; y = 0;
}fixation_pic;

ellipse_graphic {
   ellipse_width = 19;
   ellipse_height = 19;
   color = 255, 255, 255;
}probe_dot;

bitmap{ filename = "Dog1.jpg"; preload = true; } CSp;   #Dog 
bitmap{ filename = "Dog6.jpg"; preload = true; } CSm;   #Dog 

bitmap{ filename = "Dog2.jpg"; preload = true; } CSDA;  #DogA 
bitmap{ filename = "Dog3.jpg"; preload = true; } CSDB;  #DogB 
bitmap{ filename = "Dog4.jpg"; preload = true; } CSDC;  #DogC 
bitmap{ filename = "Dog5.jpg"; preload = true; } CSDD;  #DogD 

bitmap{ filename = "scale-instruction.bmp"; preload = true; } scale_instruction_bmp;  #instruction for the evaluation
bitmap{ filename = "scale-rate.bmp"; preload = true; } scale_bmp;  #pleasant scale show for each dog
bitmap{ filename = "expect-rate.bmp"; preload = true; } expect_bmp;  #expectation scale show for each dog
wavefile { filename = "snarl.wav"; } snarl;

picture {
		bitmap CSm;
		x = 0; y = 0;
		text rate_now_text;
		x = 0; y = 370;
		bitmap expect_bmp;
		x = 0; y = -425;
}CSm_rate_pic;

picture {
	bitmap CSp;
	x = 0; y = 0;
} CSp_pic;

picture {
		bitmap CSp;
		x = 0; y = 0;
		text rate_now_text;
		x = 0; y = 370;
		bitmap expect_bmp;
		x = 0; y = -425;
}CSp_rate_pic;

picture {
		bitmap CSDA;
		x = 0; y = 0;
		text rate_now_text;
		x = 0; y = 370;
		bitmap expect_bmp;
		x = 0; y = -425;
}CSDA_rate_pic;

picture {
		bitmap CSDB;
		x = 0; y = 0;
		text rate_now_text;
		x = 0; y = 370;
		bitmap expect_bmp;
		x = 0; y = -425;
}CSDB_rate_pic;

picture {
		bitmap CSDC;
		x = 0; y = 0;
		text rate_now_text;
		x = 0; y = 370;
		bitmap expect_bmp;
		x = 0; y = -425;
}CSDC_rate_pic;

picture {
		bitmap CSDD;
		x = 0; y = 0;
		text rate_now_text;
		x = 0; y = 370;
		bitmap expect_bmp;
		x = 0; y = -425;
}CSDD_rate_pic;

picture{
		bitmap CSp;
		x = 0; y = 0;
		text reaction_text;
		x = 0; y = 370;
		bitmap scale_bmp;
		x = 0; y = -425;
}response_pic_CSp;
	
picture{
		bitmap CSm;
		x = 0; y = 0;
		text reaction_text;
		x = 0; y = 370;
		bitmap scale_bmp;
		x = 0; y = -425;
}response_pic_CSm;

picture{
		bitmap CSDA;
		x = 0; y = 0;
		text reaction_text;
		x = 0; y = 370;
		bitmap scale_bmp;
		x = 0; y = -425;
}response_pic_CSDA;

picture{
		bitmap CSDB;
		x = 0; y = 0;
		text reaction_text;
		x = 0; y = 370;
		bitmap scale_bmp;
		x = 0; y = -425;
}response_pic_CSDB;

picture{
		bitmap CSDC;
		x = 0; y = 0;
		text reaction_text;
		x = 0; y = 370;
		bitmap scale_bmp;
		x = 0; y = -425;
}response_pic_CSDC;

picture{
		bitmap CSDD;
		x = 0; y = 0;
		text reaction_text;
		x = 0; y = 370;
		bitmap scale_bmp;
		x = 0; y = -425;
}response_pic_CSDD;

##########################################################
############  Pavlovian Trials Start Here ################
##########################################################

trial {
	trial_duration = forever;
	trial_type = specific_response;
	terminator_button = 1;
	picture {
		text text_1;
		x = 0; y = 0;
	};
}welcome_1; 

trial {
	trial_duration = forever;
	trial_type = specific_response;
	terminator_button = 1;
	picture {
		text text_2;
		x = 0; y = 0;
	};
}welcome_2;

trial {
	trial_duration = forever;
	trial_type = specific_response;
	terminator_button = 1;
	picture {
		text text_3;
		x = 0; y = 0;
	};
}welcome_3;
#
trial {
	trial_duration = forever;
	trial_type = specific_response;
	terminator_button = 1;
	picture {
		bitmap scale_instruction_bmp;
		x = 0; y = 0;
	};
}scale_instruction_trial;
#

trial {
	trial_duration = forever;
	trial_type = specific_response;
	terminator_button = 1;
	picture {
		text practice_text;
		x = 0; y = 0;
	};
}practice_trial;
#
trial {      
	trial_duration = 5000;
	#trial_type = first_response;
	picture fixation_pic;
}fixation_trial;

trial {
	trial_duration = 10000;
	#trial_type = fixed;
	trial_type = specific_response;
	terminator_button = 5,6,7,8,9,10,11,12,13,14,15;
	stimulus_event {
		picture CSp_pic;
		response_active = true;
	}event1;
	
	picture CSp_rate_pic;
	time = 4000;	#show the prompt in 4 seconds
	
} CSp_trial;

trial {
	trial_duration = 8000;
	trial_type = fixed;
	picture CSp_pic;
} CSp_bare_trial;

picture {
		bitmap CSm;
		x = 0; y = 0;
} CSm_pic;

trial {
	trial_duration = 8000;
	#trial_type = fixed;
	trial_type = specific_response;
	terminator_button = 5,6,7,8,9,10,11,12,13,14,15;
	stimulus_event {
	picture CSm_pic;
	response_active = true;
	}event2;
	picture CSm_rate_pic;
	time = 4000;	#show the prompt in 4 seconds
} CSm_trial;

trial {
	trial_duration = 6000;
	trial_type = fixed;
	picture CSm_pic;
} CSm_bare_trial;

picture {
	bitmap CSDA;
	x = 0; y = 0;
} CSDA_pic;

trial {
	trial_duration = 10000;
	#trial_type = fixed;
	trial_type = specific_response;
	terminator_button = 5,6,7,8,9,10,11,12,13,14,15;
	stimulus_event {
		picture CSDA_pic;
		response_active = true;
	}CSDAEvent;
	
	picture CSDA_rate_pic;
	time = 4000;	#show the prompt in 4 seconds
	
} CSDA_trial;

trial {
	trial_duration = 10000;
	trial_type = fixed;
	picture CSDA_pic;
} CSDA_bare_trial;

picture {
	bitmap CSDB;
	x = 0; y = 0;
} CSDB_pic;

trial {
	trial_duration = 10000;
	#trial_type = fixed;
	trial_type = specific_response;
	terminator_button = 5,6,7,8,9,10,11,12,13,14,15;
	stimulus_event {
	picture CSDB_pic;
	response_active = true;
	}CSDBEvent;
	
	picture CSDB_rate_pic;
	time = 4000;	#show the prompt in 4 seconds
	
} CSDB_trial;

trial {
	trial_duration = 10000;
	trial_type = fixed;
	picture CSDB_pic;
} CSDB_bare_trial;

picture {
	bitmap CSDC;
	x = 0; y = 0;
} CSDC_pic;

trial {
	trial_duration = 10000;
	#trial_type = fixed;
	trial_type = specific_response;
	terminator_button = 5,6,7,8,9,10,11,12,13,14,15;
	stimulus_event {
	picture CSDC_pic;
	response_active = true;
	}CSDCEvent;
	
	picture CSDC_rate_pic;
	time = 4000;	#show the prompt in 4 seconds
	
} CSDC_trial;

trial {
	trial_duration = 10000;
	trial_type = fixed;
	picture CSDC_pic;
} CSDC_bare_trial;

picture {
	bitmap CSDD;
	x = 0; y = 0;
} CSDD_pic;

trial {
	trial_duration = 10000;
	#trial_type = fixed;
	trial_type = specific_response;
	terminator_button = 5,6,7,8,9,10,11,12,13,14,15;
	stimulus_event {
	picture CSDD_pic;
	response_active = true;
	}CSDDEvent;
	
	picture CSDD_rate_pic;
	time = 4000;	#show the prompt in 4 seconds
	
} CSDD_trial;

trial {
	trial_duration = 10000;
	trial_type = fixed;
	picture CSDD_pic;
} CSDD_bare_trial;

trial {
	trial_duration = 2000;
	trial_type = fixed;
	picture CSm_pic;
	sound {wavefile snarl; }CSm_sound;
	response_active = true;
} CSm_trial2;

trial {
	trial_duration = 5000;
	picture {};
}blank_trial;

trial {
	trial_duration = 5000;
	#trial_type = fixed;
	trial_type = specific_response;
	terminator_button = 5,6,7,8,9,10,11,12,13,14,15;
	stimulus_event{
	picture response_pic_CSm;
	response_active = true;
	}event3;
}CSm_rating_trial;

trial {
	trial_duration = 5000;
	#trial_type = fixed;
	trial_type = specific_response;
	terminator_button = 5,6,7,8,9,10,11,12,13,14,15;
	stimulus_event{
	picture response_pic_CSp;
	response_active = true;
	}event4;
}CSp_rating_trial;

trial {
	trial_duration = 5000;
	#trial_type = fixed;
	trial_type = specific_response;
	terminator_button = 5,6,7,8,9,10,11,12,13,14,15;
	stimulus_event{
	picture response_pic_CSDA;
	response_active = true;
	}CSDARateEvent;
}CSDA_rating_trial;

trial {
	trial_duration = 5000;
	#trial_type = fixed;
	trial_type = specific_response;
	terminator_button = 5,6,7,8,9,10,11,12,13,14,15;
	stimulus_event{
	picture response_pic_CSDB;
	response_active = true;
	}CSDBRateEvent;
}CSDB_rating_trial;

trial {
	trial_duration = 5000;
	#trial_type = fixed;
	trial_type = specific_response;
	terminator_button = 5,6,7,8,9,10,11,12,13,14,15;
	stimulus_event{
	picture response_pic_CSDC;
	response_active = true;
	}CSDCRateEvent;
}CSDC_rating_trial;

trial {
	trial_duration = 5000;
	#trial_type = fixed;
	trial_type = specific_response;
	terminator_button = 5,6,7,8,9,10,11,12,13,14,15;
	stimulus_event{
	picture response_pic_CSDD;
	response_active = true;
	}CSDDRateEvent;
}CSDD_rating_trial;

trial {
	trial_duration = 2000;
	picture{};
	sound {wavefile snarl; }poly_sound_2;
}tone_reinstatement_trial;

trial {
	trial_duration = 2000;
	picture{};
}blank_reinstatement_trial;

trial {
	trial_duration = 3000;
	picture{
		text { caption = "Thank you for your participation, all trials are now complete."; };
		x = 0; y = 0;
	};
}Goodbye_trial;
#
trial {
	trial_duration = forever;
	trial_type = specific_response;
	terminator_button = 1;
	picture {
		text break_text;
		x = 0; y = 0;
	};
}break_trial;

##########################################################
############  Pavlovian Trials End Here ##################
##########################################################
