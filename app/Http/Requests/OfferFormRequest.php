<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class OfferFormRequest extends FormRequest
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
            'last_name' => ['required', 'max:255', 'string'],
            'phone' => ['required', 'max:255', 'string'],
            'upload_address' => ['required', 'string'],
            'destination_address' => ['required', 'string'],
            'images' => ['required'],
            'images.*' => ['required', 'image', 'mimes:jpeg,png,jpg,gif', 'max:200'],
        ];
    }

    public function messages()
    {
        return [
            'name.required' => 'İsim boş bırakılamaz.',
            'name.max' => 'İsim 255 karakterden uzun olamaz.',
            'name.string' => 'İsim karakterlerden oluşmalıdır.',
            'last_name.required' => 'Soyisim boş bırakılamaz.',
            'last_name.max' => 'Soyisim 255 karakterden uzun olamaz.',
            'last_name.string' => 'Soyisim karakterlerden oluşmalıdır.',
            'phone.required' => 'Telefon numarası boş bırakılamaz.',
            'phone.max' => 'Telefon numarası 255 karakterden uzun olamaz.',
            'phone.string' => 'Telefon numarası karakterlerden oluşmalıdır.',
            'upload_address.required' => 'Yüklenecek adres boş bırakılamaz.',
            'upload_address.string' => 'Yüklenecek adres yazı şeklinde olmalıdır.',
            'destination_address.required' => 'Gideceği adres boş bırakılamaz.',
            'destination_address.string' => 'Gideceği adres yazı şeklinde olmalıdır.',
            'images.required' => 'Resimler boş bırakılamaz.',
            'images.image' => 'Sadece resim yüklenmelidir.',
            'images.mimes' => 'Yüklenen dosya türleri : jpeg, png, jpg, gif olmalıdır',
            'images.max' => 'Resimlerin boyutu toplam 2 mb dan fazla olamaz.',
        ];
    }
}
