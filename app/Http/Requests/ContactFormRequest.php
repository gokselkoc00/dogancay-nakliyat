<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ContactFormRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'name' => ['required', 'max:255', 'string'],
            'email' => ['required', 'max:255', 'string','email'],
            'message' => ['required', 'max:255', 'string'],
        ];
    }

    public function messages()
    {
        return [
            'name.required' => 'İsim boş bırakılamaz.',
            'name.max' => 'İsim 255 karakterden uzun olamaz.',
            'name.string' => 'İsim karakterlerden oluşmalıdır.',
            'message.required' => 'Mesaj boş bırakılamaz.',
            'message.max' => 'Mesaj 255 karakterden uzun olamaz.',
            'message.string' => 'Mesaj karakterlerden oluşmalıdır.',
            'email.required' => 'Mail boş bırakılamaz.',
            'email.max' => 'Mail 255 karakterden uzun olamaz.',
            'email.string' => 'Mail karakterlerden oluşmalıdır.',
            'email.email' => 'Lütfen geçerli bir mail adresi giriniz.',
        ];
    }
}
