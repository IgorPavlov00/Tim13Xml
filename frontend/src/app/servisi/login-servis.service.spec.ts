import { TestBed } from '@angular/core/testing';

import { LoginServisService } from './login-servis.service';

describe('LoginServisService', () => {
  let service: LoginServisService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(LoginServisService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
