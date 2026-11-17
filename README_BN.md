# ROSE AI — Flutter Starter

এটি ROSE AI Android অ্যাপের **প্রাথমিক সোর্স প্রজেক্ট**। এটি এখনই সম্পূর্ণ AI/3D অ্যাপ বা APK নয়।

## এই ডেমোতে যা কাজ করে
- ROSE AI-এর প্রাথমিক স্ক্রিন
- বাংলা টেক্সট চ্যাটের ডেমো
- Pink / Black / Golden লুক নির্বাচন
- পোশাক আপলোড বাটনের placeholder

## এখনো যুক্ত করা হয়নি
- আসল AI সার্ভার ও কথোপকথন
- বাংলা নারী TTS/STT ভয়েস
- 3D পূর্ণদেহের মডেল, facial animation ও lip-sync
- ছবি থেকে পোশাক পরিবর্তন
- ব্যবহারকারীর সম্মতিসহ নিরাপদ মেমরি

## APK বানানোর জন্য
কম্পিউটারে Flutter SDK এবং Android SDK ইনস্টল করে:
1. এই ফোল্ডারে টার্মিনাল খুলুন।
2. `flutter pub get`
3. `flutter create .`
4. `flutter build apk --release`
5. APK পাবেন `build/app/outputs/flutter-apk/app-release.apk` পথে।

**গুরুত্বপূর্ণ:** এই ZIP হলো সোর্স কোড। এখানে APK কম্পাইল করা হয়নি। Android build environment-এ উপরের ধাপগুলো চালাতে হবে।
