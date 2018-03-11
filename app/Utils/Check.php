<?php
namespace App\Utils;
class Check
{
    //
    public static function isEmailLegal($email)
    {
       $udomain = end(explode('@', $email));
         $blocked_domains = array("guerrillamail.com", "yopmail.com","spambox.us","trashmail.net","chacuo.net","mail.bccto.me","bccto.me","spambog.com","10minutemail.com","meltmail.com");
         if (filter_var($email, FILTER_VALIDATE_EMAIL) && (in_array($udomain,$blocked_domains))==0) {
			 return 1;
        } else {
            return false;
        }
    }
}