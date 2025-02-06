class MyClass {
public:
    MyClass(int x) {}  // Non-explicit single-argument constructor violation
};

int main() {
    MyClass obj(5);
    return 0;
}
