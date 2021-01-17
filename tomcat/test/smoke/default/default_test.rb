describe "Tomcat Daemon" do
  it "is listening on port 8080" do
    expect(port(8080)).to be_listening
  end
  it "has a running service of tomcat" do
    expect(service("tomcat")).to be_running
  end
end

describe group("tomcat") do
  it { should exist }
end

describe user("tomcat") do
  it { should exist }
  it { should belong_to_group "tomcat" }
end

describe file("/opt/tomcat") do
  it { should be_directory }
end
