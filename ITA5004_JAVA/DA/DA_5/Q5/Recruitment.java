enum Gender {
  MALE,
  FEMALE,
}

public class Recruitment implements Comparable<Recruitment> {
  private String name;
  private String qualification;
  private int experience;
  private String dob;
  private Gender gender;

  public Recruitment(String name, String qualification, int experience, String dob, Gender gender) {
    this.name = name;
    this.qualification = qualification;
    this.experience = experience;
    this.dob = dob;
    this.gender = gender;
  }

  @Override
  public int compareTo(Recruitment o) {
    if (this.experience == o.experience) {
      return this.name.compareTo(o.name);
    }

    return this.experience - o.experience;
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();

    sb.append("Name: " + this.name + "\n");
    sb.append("Qualification: " + this.qualification + "\n");
    sb.append("Experience: " + this.experience + "\n");
    sb.append("Date of Birth: " + this.dob + "\n");
    sb.append("Gender: " + this.gender);

    return sb.toString();
  }
}
