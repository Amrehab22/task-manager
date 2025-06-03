from App import app

def test_index():
    tester = app.test_client()
    response = tester.get('/')
    assert response.status_code == 200
    assert b"Welcome to Task Manager API" in response.data
