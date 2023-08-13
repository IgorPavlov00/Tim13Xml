import { TestBed } from '@angular/core/testing';

import { TrademarkRequestService } from './trademark-request.service';

describe('TrademarkRequestService', () => {
  let service: TrademarkRequestService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(TrademarkRequestService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
