abstract class AppValidator
{
  static String? validateEmail (String? value)
  {
    var emailRegex = RegExp(r'[\w\.-]+@[\w\.-]+\.[\w]+');
    if(!emailRegex.hasMatch(value??''))
    {
      return 'Please enter valid Email';
    }
    return null;
  }


  static String? validatePassword (String? value)
  {
    if(value == null || value.isEmpty)
    {
      return 'Please enter your password';
    }
    else if (value.length < 6)
    {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  static String? validateConfirmPassword (String? value , String password)
  {
    if(value == null || value.isEmpty)
    {
      return 'Please enter your password confirmation';
    }
    else if (value!=password)
    {
      return 'Passwords do not match ';
    }
    else
    {
      return null;
    }
  }
}