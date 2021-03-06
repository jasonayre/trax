##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf/message'

module Trax

  ##
  # Enum Classes
  #
  class RoutingStrategy < ::Protobuf::Enum
    define :RESTFUL, 1
    define :STATIC, 2
  end

  class Status < ::Protobuf::Enum
    define :ACTIVE, 1
    define :INACTIVE, 2
  end

  class Version < ::Protobuf::Enum
    define :V000, 0
    define :V001, 1
    define :V002, 2
    define :V003, 3
    define :V004, 4
    define :V005, 5
    define :V006, 6
    define :V007, 7
    define :V008, 8
    define :V009, 9
    define :V010, 10
    define :V011, 11
    define :V012, 12
    define :V013, 13
    define :V014, 14
    define :V015, 15
    define :V016, 16
    define :V017, 17
    define :V018, 18
    define :V019, 19
    define :V020, 20
    define :V021, 21
    define :V022, 22
    define :V023, 23
    define :V024, 24
    define :V025, 25
    define :V026, 26
    define :V027, 27
    define :V028, 28
    define :V029, 29
    define :V030, 30
    define :V031, 31
    define :V032, 32
    define :V033, 33
    define :V034, 34
    define :V035, 35
    define :V036, 36
    define :V037, 37
    define :V038, 38
    define :V039, 39
    define :V040, 40
    define :V041, 41
    define :V042, 42
    define :V043, 43
    define :V044, 44
    define :V045, 45
    define :V046, 46
    define :V047, 47
    define :V048, 48
    define :V049, 49
    define :V050, 50
    define :V051, 51
    define :V052, 52
    define :V053, 53
    define :V054, 54
    define :V055, 55
    define :V056, 56
    define :V057, 57
    define :V058, 58
    define :V059, 59
    define :V060, 60
    define :V061, 61
    define :V062, 62
    define :V063, 63
    define :V064, 64
    define :V065, 65
    define :V066, 66
    define :V067, 67
    define :V068, 68
    define :V069, 69
    define :V070, 70
    define :V071, 71
    define :V072, 72
    define :V073, 73
    define :V074, 74
    define :V075, 75
    define :V076, 76
    define :V077, 77
    define :V078, 78
    define :V079, 79
    define :V080, 80
    define :V081, 81
    define :V082, 82
    define :V083, 83
    define :V084, 84
    define :V085, 85
    define :V086, 86
    define :V087, 87
    define :V088, 88
    define :V089, 89
    define :V090, 90
    define :V091, 91
    define :V092, 92
    define :V093, 93
    define :V094, 94
    define :V095, 95
    define :V096, 96
    define :V097, 97
    define :V098, 98
    define :V099, 99
    define :V100, 100
    define :V101, 101
    define :V102, 102
    define :V103, 103
    define :V104, 104
    define :V105, 105
    define :V106, 106
    define :V107, 107
    define :V108, 108
    define :V109, 109
    define :V110, 110
    define :V111, 111
    define :V112, 112
    define :V113, 113
    define :V114, 114
    define :V115, 115
    define :V116, 116
    define :V117, 117
    define :V118, 118
    define :V119, 119
    define :V120, 120
    define :V121, 121
    define :V122, 122
    define :V123, 123
    define :V124, 124
    define :V125, 125
    define :V126, 126
    define :V127, 127
    define :V128, 128
    define :V129, 129
    define :V130, 130
    define :V131, 131
    define :V132, 132
    define :V133, 133
    define :V134, 134
    define :V135, 135
    define :V136, 136
    define :V137, 137
    define :V138, 138
    define :V139, 139
    define :V140, 140
    define :V141, 141
    define :V142, 142
    define :V143, 143
    define :V144, 144
    define :V145, 145
    define :V146, 146
    define :V147, 147
    define :V148, 148
    define :V149, 149
    define :V150, 150
    define :V151, 151
    define :V152, 152
    define :V153, 153
    define :V154, 154
    define :V155, 155
    define :V156, 156
    define :V157, 157
    define :V158, 158
    define :V159, 159
    define :V160, 160
    define :V161, 161
    define :V162, 162
    define :V163, 163
    define :V164, 164
    define :V165, 165
    define :V166, 166
    define :V167, 167
    define :V168, 168
    define :V169, 169
    define :V170, 170
    define :V171, 171
    define :V172, 172
    define :V173, 173
    define :V174, 174
    define :V175, 175
    define :V176, 176
    define :V177, 177
    define :V178, 178
    define :V179, 179
    define :V180, 180
    define :V181, 181
    define :V182, 182
    define :V183, 183
    define :V184, 184
    define :V185, 185
    define :V186, 186
    define :V187, 187
    define :V188, 188
    define :V189, 189
    define :V190, 190
    define :V191, 191
    define :V192, 192
    define :V193, 193
    define :V194, 194
    define :V195, 195
    define :V196, 196
    define :V197, 197
    define :V198, 198
    define :V199, 199
    define :V200, 200
    define :V201, 201
    define :V202, 202
    define :V203, 203
    define :V204, 204
    define :V205, 205
    define :V206, 206
    define :V207, 207
    define :V208, 208
    define :V209, 209
    define :V210, 210
    define :V211, 211
    define :V212, 212
    define :V213, 213
    define :V214, 214
    define :V215, 215
    define :V216, 216
    define :V217, 217
    define :V218, 218
    define :V219, 219
    define :V220, 220
    define :V221, 221
    define :V222, 222
    define :V223, 223
    define :V224, 224
    define :V225, 225
    define :V226, 226
    define :V227, 227
    define :V228, 228
    define :V229, 229
    define :V230, 230
    define :V231, 231
    define :V232, 232
    define :V233, 233
    define :V234, 234
    define :V235, 235
    define :V236, 236
    define :V237, 237
    define :V238, 238
    define :V239, 239
    define :V240, 240
    define :V241, 241
    define :V242, 242
    define :V243, 243
    define :V244, 244
    define :V245, 245
    define :V246, 246
    define :V247, 247
    define :V248, 248
    define :V249, 249
    define :V250, 250
    define :V251, 251
    define :V252, 252
    define :V253, 253
    define :V254, 254
    define :V255, 255
    define :V256, 256
    define :V257, 257
    define :V258, 258
    define :V259, 259
    define :V260, 260
    define :V261, 261
    define :V262, 262
    define :V263, 263
    define :V264, 264
    define :V265, 265
    define :V266, 266
    define :V267, 267
    define :V268, 268
    define :V269, 269
    define :V270, 270
    define :V271, 271
    define :V272, 272
    define :V273, 273
    define :V274, 274
    define :V275, 275
    define :V276, 276
    define :V277, 277
    define :V278, 278
    define :V279, 279
    define :V280, 280
    define :V281, 281
    define :V282, 282
    define :V283, 283
    define :V284, 284
    define :V285, 285
    define :V286, 286
    define :V287, 287
    define :V288, 288
    define :V289, 289
    define :V290, 290
    define :V291, 291
    define :V292, 292
    define :V293, 293
    define :V294, 294
    define :V295, 295
    define :V296, 296
    define :V297, 297
    define :V298, 298
    define :V299, 299
    define :V300, 300
    define :V301, 301
    define :V302, 302
    define :V303, 303
    define :V304, 304
    define :V305, 305
    define :V306, 306
    define :V307, 307
    define :V308, 308
    define :V309, 309
    define :V310, 310
    define :V311, 311
    define :V312, 312
    define :V313, 313
    define :V314, 314
    define :V315, 315
    define :V316, 316
    define :V317, 317
    define :V318, 318
    define :V319, 319
    define :V320, 320
    define :V321, 321
    define :V322, 322
    define :V323, 323
    define :V324, 324
    define :V325, 325
    define :V326, 326
    define :V327, 327
    define :V328, 328
    define :V329, 329
    define :V330, 330
    define :V331, 331
    define :V332, 332
    define :V333, 333
    define :V334, 334
    define :V335, 335
    define :V336, 336
    define :V337, 337
    define :V338, 338
    define :V339, 339
    define :V340, 340
    define :V341, 341
    define :V342, 342
    define :V343, 343
    define :V344, 344
    define :V345, 345
    define :V346, 346
    define :V347, 347
    define :V348, 348
    define :V349, 349
    define :V350, 350
    define :V351, 351
    define :V352, 352
    define :V353, 353
    define :V354, 354
    define :V355, 355
    define :V356, 356
    define :V357, 357
    define :V358, 358
    define :V359, 359
    define :V360, 360
    define :V361, 361
    define :V362, 362
    define :V363, 363
    define :V364, 364
    define :V365, 365
    define :V366, 366
    define :V367, 367
    define :V368, 368
    define :V369, 369
    define :V370, 370
    define :V371, 371
    define :V372, 372
    define :V373, 373
    define :V374, 374
    define :V375, 375
    define :V376, 376
    define :V377, 377
    define :V378, 378
    define :V379, 379
    define :V380, 380
    define :V381, 381
    define :V382, 382
    define :V383, 383
    define :V384, 384
    define :V385, 385
    define :V386, 386
    define :V387, 387
    define :V388, 388
    define :V389, 389
    define :V390, 390
    define :V391, 391
    define :V392, 392
    define :V393, 393
    define :V394, 394
    define :V395, 395
    define :V396, 396
    define :V397, 397
    define :V398, 398
    define :V399, 399
    define :V400, 400
    define :V401, 401
    define :V402, 402
    define :V403, 403
    define :V404, 404
    define :V405, 405
    define :V406, 406
    define :V407, 407
    define :V408, 408
    define :V409, 409
    define :V410, 410
    define :V411, 411
    define :V412, 412
    define :V413, 413
    define :V414, 414
    define :V415, 415
    define :V416, 416
    define :V417, 417
    define :V418, 418
    define :V419, 419
    define :V420, 420
    define :V421, 421
    define :V422, 422
    define :V423, 423
    define :V424, 424
    define :V425, 425
    define :V426, 426
    define :V427, 427
    define :V428, 428
    define :V429, 429
    define :V430, 430
    define :V431, 431
    define :V432, 432
    define :V433, 433
    define :V434, 434
    define :V435, 435
    define :V436, 436
    define :V437, 437
    define :V438, 438
    define :V439, 439
    define :V440, 440
    define :V441, 441
    define :V442, 442
    define :V443, 443
    define :V444, 444
    define :V445, 445
    define :V446, 446
    define :V447, 447
    define :V448, 448
    define :V449, 449
    define :V450, 450
    define :V451, 451
    define :V452, 452
    define :V453, 453
    define :V454, 454
    define :V455, 455
    define :V456, 456
    define :V457, 457
    define :V458, 458
    define :V459, 459
    define :V460, 460
    define :V461, 461
    define :V462, 462
    define :V463, 463
    define :V464, 464
    define :V465, 465
    define :V466, 466
    define :V467, 467
    define :V468, 468
    define :V469, 469
    define :V470, 470
    define :V471, 471
    define :V472, 472
    define :V473, 473
    define :V474, 474
    define :V475, 475
    define :V476, 476
    define :V477, 477
    define :V478, 478
    define :V479, 479
    define :V480, 480
    define :V481, 481
    define :V482, 482
    define :V483, 483
    define :V484, 484
    define :V485, 485
    define :V486, 486
    define :V487, 487
    define :V488, 488
    define :V489, 489
    define :V490, 490
    define :V491, 491
    define :V492, 492
    define :V493, 493
    define :V494, 494
    define :V495, 495
    define :V496, 496
    define :V497, 497
    define :V498, 498
    define :V499, 499
    define :V500, 500
    define :V501, 501
    define :V502, 502
    define :V503, 503
    define :V504, 504
    define :V505, 505
    define :V506, 506
    define :V507, 507
    define :V508, 508
    define :V509, 509
    define :V510, 510
    define :V511, 511
    define :V512, 512
    define :V513, 513
    define :V514, 514
    define :V515, 515
    define :V516, 516
    define :V517, 517
    define :V518, 518
    define :V519, 519
    define :V520, 520
    define :V521, 521
    define :V522, 522
    define :V523, 523
    define :V524, 524
    define :V525, 525
    define :V526, 526
    define :V527, 527
    define :V528, 528
    define :V529, 529
    define :V530, 530
    define :V531, 531
    define :V532, 532
    define :V533, 533
    define :V534, 534
    define :V535, 535
    define :V536, 536
    define :V537, 537
    define :V538, 538
    define :V539, 539
    define :V540, 540
    define :V541, 541
    define :V542, 542
    define :V543, 543
    define :V544, 544
    define :V545, 545
    define :V546, 546
    define :V547, 547
    define :V548, 548
    define :V549, 549
    define :V550, 550
    define :V551, 551
    define :V552, 552
    define :V553, 553
    define :V554, 554
    define :V555, 555
    define :V556, 556
    define :V557, 557
    define :V558, 558
    define :V559, 559
    define :V560, 560
    define :V561, 561
    define :V562, 562
    define :V563, 563
    define :V564, 564
    define :V565, 565
    define :V566, 566
    define :V567, 567
    define :V568, 568
    define :V569, 569
    define :V570, 570
    define :V571, 571
    define :V572, 572
    define :V573, 573
    define :V574, 574
    define :V575, 575
    define :V576, 576
    define :V577, 577
    define :V578, 578
    define :V579, 579
    define :V580, 580
    define :V581, 581
    define :V582, 582
    define :V583, 583
    define :V584, 584
    define :V585, 585
    define :V586, 586
    define :V587, 587
    define :V588, 588
    define :V589, 589
    define :V590, 590
    define :V591, 591
    define :V592, 592
    define :V593, 593
    define :V594, 594
    define :V595, 595
    define :V596, 596
    define :V597, 597
    define :V598, 598
    define :V599, 599
    define :V600, 600
    define :V601, 601
    define :V602, 602
    define :V603, 603
    define :V604, 604
    define :V605, 605
    define :V606, 606
    define :V607, 607
    define :V608, 608
    define :V609, 609
    define :V610, 610
    define :V611, 611
    define :V612, 612
    define :V613, 613
    define :V614, 614
    define :V615, 615
    define :V616, 616
    define :V617, 617
    define :V618, 618
    define :V619, 619
    define :V620, 620
    define :V621, 621
    define :V622, 622
    define :V623, 623
    define :V624, 624
    define :V625, 625
    define :V626, 626
    define :V627, 627
    define :V628, 628
    define :V629, 629
    define :V630, 630
    define :V631, 631
    define :V632, 632
    define :V633, 633
    define :V634, 634
    define :V635, 635
    define :V636, 636
    define :V637, 637
    define :V638, 638
    define :V639, 639
    define :V640, 640
    define :V641, 641
    define :V642, 642
    define :V643, 643
    define :V644, 644
    define :V645, 645
    define :V646, 646
    define :V647, 647
    define :V648, 648
    define :V649, 649
    define :V650, 650
    define :V651, 651
    define :V652, 652
    define :V653, 653
    define :V654, 654
    define :V655, 655
    define :V656, 656
    define :V657, 657
    define :V658, 658
    define :V659, 659
    define :V660, 660
    define :V661, 661
    define :V662, 662
    define :V663, 663
    define :V664, 664
    define :V665, 665
    define :V666, 666
    define :V667, 667
    define :V668, 668
    define :V669, 669
    define :V670, 670
    define :V671, 671
    define :V672, 672
    define :V673, 673
    define :V674, 674
    define :V675, 675
    define :V676, 676
    define :V677, 677
    define :V678, 678
    define :V679, 679
    define :V680, 680
    define :V681, 681
    define :V682, 682
    define :V683, 683
    define :V684, 684
    define :V685, 685
    define :V686, 686
    define :V687, 687
    define :V688, 688
    define :V689, 689
    define :V690, 690
    define :V691, 691
    define :V692, 692
    define :V693, 693
    define :V694, 694
    define :V695, 695
    define :V696, 696
    define :V697, 697
    define :V698, 698
    define :V699, 699
    define :V700, 700
    define :V701, 701
    define :V702, 702
    define :V703, 703
    define :V704, 704
    define :V705, 705
    define :V706, 706
    define :V707, 707
    define :V708, 708
    define :V709, 709
    define :V710, 710
    define :V711, 711
    define :V712, 712
    define :V713, 713
    define :V714, 714
    define :V715, 715
    define :V716, 716
    define :V717, 717
    define :V718, 718
    define :V719, 719
    define :V720, 720
    define :V721, 721
    define :V722, 722
    define :V723, 723
    define :V724, 724
    define :V725, 725
    define :V726, 726
    define :V727, 727
    define :V728, 728
    define :V729, 729
    define :V730, 730
    define :V731, 731
    define :V732, 732
    define :V733, 733
    define :V734, 734
    define :V735, 735
    define :V736, 736
    define :V737, 737
    define :V738, 738
    define :V739, 739
    define :V740, 740
    define :V741, 741
    define :V742, 742
    define :V743, 743
    define :V744, 744
    define :V745, 745
    define :V746, 746
    define :V747, 747
    define :V748, 748
    define :V749, 749
    define :V750, 750
    define :V751, 751
    define :V752, 752
    define :V753, 753
    define :V754, 754
    define :V755, 755
    define :V756, 756
    define :V757, 757
    define :V758, 758
    define :V759, 759
    define :V760, 760
    define :V761, 761
    define :V762, 762
    define :V763, 763
    define :V764, 764
    define :V765, 765
    define :V766, 766
    define :V767, 767
    define :V768, 768
    define :V769, 769
    define :V770, 770
    define :V771, 771
    define :V772, 772
    define :V773, 773
    define :V774, 774
    define :V775, 775
    define :V776, 776
    define :V777, 777
    define :V778, 778
    define :V779, 779
    define :V780, 780
    define :V781, 781
    define :V782, 782
    define :V783, 783
    define :V784, 784
    define :V785, 785
    define :V786, 786
    define :V787, 787
    define :V788, 788
    define :V789, 789
    define :V790, 790
    define :V791, 791
    define :V792, 792
    define :V793, 793
    define :V794, 794
    define :V795, 795
    define :V796, 796
    define :V797, 797
    define :V798, 798
    define :V799, 799
    define :V800, 800
    define :V801, 801
    define :V802, 802
    define :V803, 803
    define :V804, 804
    define :V805, 805
    define :V806, 806
    define :V807, 807
    define :V808, 808
    define :V809, 809
    define :V810, 810
    define :V811, 811
    define :V812, 812
    define :V813, 813
    define :V814, 814
    define :V815, 815
    define :V816, 816
    define :V817, 817
    define :V818, 818
    define :V819, 819
    define :V820, 820
    define :V821, 821
    define :V822, 822
    define :V823, 823
    define :V824, 824
    define :V825, 825
    define :V826, 826
    define :V827, 827
    define :V828, 828
    define :V829, 829
    define :V830, 830
    define :V831, 831
    define :V832, 832
    define :V833, 833
    define :V834, 834
    define :V835, 835
    define :V836, 836
    define :V837, 837
    define :V838, 838
    define :V839, 839
    define :V840, 840
    define :V841, 841
    define :V842, 842
    define :V843, 843
    define :V844, 844
    define :V845, 845
    define :V846, 846
    define :V847, 847
    define :V848, 848
    define :V849, 849
    define :V850, 850
    define :V851, 851
    define :V852, 852
    define :V853, 853
    define :V854, 854
    define :V855, 855
    define :V856, 856
    define :V857, 857
    define :V858, 858
    define :V859, 859
    define :V860, 860
    define :V861, 861
    define :V862, 862
    define :V863, 863
    define :V864, 864
    define :V865, 865
    define :V866, 866
    define :V867, 867
    define :V868, 868
    define :V869, 869
    define :V870, 870
    define :V871, 871
    define :V872, 872
    define :V873, 873
    define :V874, 874
    define :V875, 875
    define :V876, 876
    define :V877, 877
    define :V878, 878
    define :V879, 879
    define :V880, 880
    define :V881, 881
    define :V882, 882
    define :V883, 883
    define :V884, 884
    define :V885, 885
    define :V886, 886
    define :V887, 887
    define :V888, 888
    define :V889, 889
    define :V890, 890
    define :V891, 891
    define :V892, 892
    define :V893, 893
    define :V894, 894
    define :V895, 895
    define :V896, 896
    define :V897, 897
    define :V898, 898
    define :V899, 899
    define :V900, 900
    define :V901, 901
    define :V902, 902
    define :V903, 903
    define :V904, 904
    define :V905, 905
    define :V906, 906
    define :V907, 907
    define :V908, 908
    define :V909, 909
    define :V910, 910
    define :V911, 911
    define :V912, 912
    define :V913, 913
    define :V914, 914
    define :V915, 915
    define :V916, 916
    define :V917, 917
    define :V918, 918
    define :V919, 919
    define :V920, 920
    define :V921, 921
    define :V922, 922
    define :V923, 923
    define :V924, 924
    define :V925, 925
    define :V926, 926
    define :V927, 927
    define :V928, 928
    define :V929, 929
    define :V930, 930
    define :V931, 931
    define :V932, 932
    define :V933, 933
    define :V934, 934
    define :V935, 935
    define :V936, 936
    define :V937, 937
    define :V938, 938
    define :V939, 939
    define :V940, 940
    define :V941, 941
    define :V942, 942
    define :V943, 943
    define :V944, 944
    define :V945, 945
    define :V946, 946
    define :V947, 947
    define :V948, 948
    define :V949, 949
    define :V950, 950
    define :V951, 951
    define :V952, 952
    define :V953, 953
    define :V954, 954
    define :V955, 955
    define :V956, 956
    define :V957, 957
    define :V958, 958
    define :V959, 959
    define :V960, 960
    define :V961, 961
    define :V962, 962
    define :V963, 963
    define :V964, 964
    define :V965, 965
    define :V966, 966
    define :V967, 967
    define :V968, 968
    define :V969, 969
    define :V970, 970
    define :V971, 971
    define :V972, 972
    define :V973, 973
    define :V974, 974
    define :V975, 975
    define :V976, 976
    define :V977, 977
    define :V978, 978
    define :V979, 979
    define :V980, 980
    define :V981, 981
    define :V982, 982
    define :V983, 983
    define :V984, 984
    define :V985, 985
    define :V986, 986
    define :V987, 987
    define :V988, 988
    define :V989, 989
    define :V990, 990
    define :V991, 991
    define :V992, 992
    define :V993, 993
    define :V994, 994
    define :V995, 995
    define :V996, 996
    define :V997, 997
    define :V998, 998
    define :V999, 999
  end


  ##
  # Message Classes
  #
  class Migration < ::Protobuf::Message; end


  ##
  # Message Fields
  #
  class Migration
    optional ::Trax::Version, :start_version, 1
    optional ::Trax::Version, :end_version, 2
  end

end

