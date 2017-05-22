<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class Mariuszb_website extends Mailable {

    use Queueable,
        SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct() {
        //
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build() {
        $namePerson = $_POST['name'];
        $mail = $_POST['mail'];
        $contentMail = $_POST['message'];

        $address = 'website@mariuszb.eu';
        $name    = 'strona';
        $subject = 'Mail ze strony mariuszb.eu';

        return $this->view('email.mail', compact('total', 'namePerson', 'mail', 'contentMail'))
            ->from($address, $name)
            ->subject($subject);
    }

}
