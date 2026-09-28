.class public Lcom/can/tool/TrackData$TrackParam;
.super Ljava/lang/Object;
.source "TrackData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/tool/TrackData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackParam"
.end annotation


# instance fields
.field public mVTrackleft:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/can/tool/TrackData$SPointEx;",
            ">;"
        }
    .end annotation
.end field

.field public mVTrackright:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/can/tool/TrackData$SPointEx;",
            ">;"
        }
    .end annotation
.end field

.field public mbLeftTrackAvailable:Z

.field public mbParamwideSpec:Z

.field public mbRightTrackAvailable:Z

.field public mbyLineLeft:[[I

.field public mbyLineRight:[[I

.field public mdParamD:D

.field public mdParamL:D

.field public mdParamW:D

.field public mdParamalpha:D

.field public mdParamalpha2:D

.field public mdParamd:D

.field public mdParamf:D

.field public mdParamh:D

.field public mdParamphi:D

.field public mdParamtheta:D

.field public mdParamu:D

.field public mdParamv:D

.field public miParamm:I

.field public miParamn:I

.field public miParamp:I

.field public miParamq:I

.field public mlPhyPoint:Lcom/can/tool/TrackData$DPonit;

.field public mlScrPoint:Lcom/can/tool/TrackData$SPonit;

.field public mlTPoint:Lcom/can/tool/TrackData$SPonit;

.field public mrPhyPoint:Lcom/can/tool/TrackData$DPonit;

.field public mrScrPoint:Lcom/can/tool/TrackData$SPonit;

.field public mrTPoint:Lcom/can/tool/TrackData$SPonit;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 121
    const-class v0, I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v1, Lcom/can/tool/TrackData$DPonit;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/can/tool/TrackData$DPonit;-><init>(FF)V

    iput-object v1, p0, Lcom/can/tool/TrackData$TrackParam;->mlPhyPoint:Lcom/can/tool/TrackData$DPonit;

    .line 64
    new-instance v1, Lcom/can/tool/TrackData$DPonit;

    invoke-direct {v1, v2, v2}, Lcom/can/tool/TrackData$DPonit;-><init>(FF)V

    iput-object v1, p0, Lcom/can/tool/TrackData$TrackParam;->mrPhyPoint:Lcom/can/tool/TrackData$DPonit;

    .line 65
    new-instance v1, Lcom/can/tool/TrackData$SPonit;

    invoke-direct {v1, v2, v2}, Lcom/can/tool/TrackData$SPonit;-><init>(FF)V

    iput-object v1, p0, Lcom/can/tool/TrackData$TrackParam;->mlScrPoint:Lcom/can/tool/TrackData$SPonit;

    .line 66
    new-instance v1, Lcom/can/tool/TrackData$SPonit;

    invoke-direct {v1, v2, v2}, Lcom/can/tool/TrackData$SPonit;-><init>(FF)V

    iput-object v1, p0, Lcom/can/tool/TrackData$TrackParam;->mrScrPoint:Lcom/can/tool/TrackData$SPonit;

    .line 68
    new-instance v1, Lcom/can/tool/TrackData$SPonit;

    invoke-direct {v1, v2, v2}, Lcom/can/tool/TrackData$SPonit;-><init>(FF)V

    iput-object v1, p0, Lcom/can/tool/TrackData$TrackParam;->mlTPoint:Lcom/can/tool/TrackData$SPonit;

    .line 69
    new-instance v1, Lcom/can/tool/TrackData$SPonit;

    invoke-direct {v1, v2, v2}, Lcom/can/tool/TrackData$SPonit;-><init>(FF)V

    iput-object v1, p0, Lcom/can/tool/TrackData$TrackParam;->mrTPoint:Lcom/can/tool/TrackData$SPonit;

    const-wide/16 v1, 0x0

    .line 72
    iput-wide v1, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamalpha2:D

    .line 74
    iput-wide v1, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamalpha:D

    .line 76
    iput-wide v1, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamtheta:D

    .line 79
    iput-wide v1, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamL:D

    .line 81
    iput-wide v1, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamW:D

    .line 83
    iput-wide v1, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamD:D

    .line 85
    iput-wide v1, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamh:D

    .line 87
    iput-wide v1, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamd:D

    const/4 v3, 0x0

    .line 89
    iput v3, p0, Lcom/can/tool/TrackData$TrackParam;->miParamm:I

    .line 91
    iput v3, p0, Lcom/can/tool/TrackData$TrackParam;->miParamn:I

    .line 93
    iput v3, p0, Lcom/can/tool/TrackData$TrackParam;->miParamp:I

    .line 95
    iput v3, p0, Lcom/can/tool/TrackData$TrackParam;->miParamq:I

    .line 97
    iput-wide v1, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamphi:D

    .line 99
    iput-boolean v3, p0, Lcom/can/tool/TrackData$TrackParam;->mbParamwideSpec:Z

    .line 102
    iput-wide v1, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamu:D

    .line 104
    iput-wide v1, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamv:D

    .line 106
    iput-wide v1, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamf:D

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackleft:Ljava/util/ArrayList;

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackright:Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 118
    fill-array-data v2, :array_0

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lcom/can/tool/TrackData$TrackParam;->mbyLineLeft:[[I

    new-array v1, v1, [I

    .line 119
    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/can/tool/TrackData$TrackParam;->mbyLineRight:[[I

    :goto_0
    const/16 v0, 0x51

    if-ge v3, v0, :cond_0

    .line 124
    new-instance v0, Lcom/can/tool/TrackData$SPointEx;

    invoke-direct {v0}, Lcom/can/tool/TrackData$SPointEx;-><init>()V

    .line 125
    iget-object v1, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackleft:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v1, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackright:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x51
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x51
        0x4
    .end array-data
.end method


# virtual methods
.method public CreatePoint()Z
    .locals 35

    move-object/from16 v0, p0

    const-wide/high16 v1, -0x3fbc000000000000L    # -40.0

    .line 276
    :goto_0
    iput-wide v1, v0, Lcom/can/tool/TrackData$TrackParam;->mdParamphi:D

    iget-wide v1, v0, Lcom/can/tool/TrackData$TrackParam;->mdParamphi:D

    const-wide/high16 v3, 0x4044000000000000L    # 40.0

    cmpg-double v5, v1, v3

    const/4 v6, 0x1

    if-gtz v5, :cond_d

    add-double/2addr v3, v1

    double-to-int v3, v3

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v1, v4

    const-wide v4, 0x400921fa00000000L    # 3.141590118408203

    mul-double/2addr v1, v4

    .line 283
    iget-wide v4, v0, Lcom/can/tool/TrackData$TrackParam;->mdParamW:D

    iget-wide v7, v0, Lcom/can/tool/TrackData$TrackParam;->mdParamL:D

    const-wide v9, 0x3ff921fa00000000L    # 1.5707950592041016

    sub-double/2addr v9, v1

    .line 284
    invoke-static {v9, v10}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/can/tool/TrackData$TrackParam;->abs(D)D

    move-result-wide v1

    mul-double/2addr v7, v1

    iget-wide v1, v0, Lcom/can/tool/TrackData$TrackParam;->mdParamW:D

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v11

    sub-double/2addr v7, v1

    div-double/2addr v4, v7

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v1

    .line 286
    iget-wide v7, v0, Lcom/can/tool/TrackData$TrackParam;->mdParamL:D

    invoke-static {v9, v10}, Ljava/lang/Math;->tan(D)D

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/can/tool/TrackData$TrackParam;->abs(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    .line 287
    iget-wide v9, v0, Lcom/can/tool/TrackData$TrackParam;->mdParamW:D

    div-double v13, v9, v11

    div-double/2addr v13, v7

    sub-double v13, v1, v13

    div-double/2addr v9, v11

    div-double/2addr v9, v7

    add-double/2addr v9, v1

    const/4 v7, 0x3

    new-array v8, v7, [D

    new-array v15, v7, [D

    .line 292
    iget-wide v11, v0, Lcom/can/tool/TrackData$TrackParam;->mdParamphi:D

    const-wide/high16 v18, -0x3ff8000000000000L    # -3.0

    cmpg-double v18, v11, v18

    const-wide v19, 0x3ff4cccccccccccdL    # 1.3

    const-wide v21, 0x3ff3333333333333L    # 1.2

    const-wide/high16 v23, 0x3ff8000000000000L    # 1.5

    const-wide v25, 0x3ff199999999999aL    # 1.1

    const-wide v27, 0x3ff6666666666666L    # 1.4

    const-wide/high16 v29, 0x4008000000000000L    # 3.0

    const/16 v31, 0x2

    const-wide/high16 v32, 0x3fe0000000000000L    # 0.5

    const/16 v34, 0x0

    if-gez v18, :cond_0

    sub-double v11, v9, v1

    mul-double v27, v27, v11

    add-double v27, v27, v1

    mul-double v27, v27, v32

    aput-wide v27, v8, v34

    mul-double v25, v25, v11

    add-double v25, v25, v1

    mul-double v25, v25, v1

    aput-wide v25, v8, v6

    mul-double v11, v11, v32

    add-double/2addr v11, v1

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v11, v11, v16

    aput-wide v11, v8, v31

    sub-double/2addr v13, v1

    mul-double v23, v23, v13

    add-double v23, v23, v1

    mul-double v23, v23, v32

    aput-wide v23, v15, v34

    mul-double v21, v21, v13

    add-double v21, v21, v1

    mul-double v21, v21, v1

    aput-wide v21, v15, v6

    mul-double v13, v13, v19

    add-double/2addr v13, v1

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double/2addr v13, v11

    aput-wide v13, v15, v31

    goto :goto_1

    :cond_0
    cmpl-double v11, v11, v29

    if-lez v11, :cond_1

    sub-double/2addr v13, v1

    mul-double v23, v23, v13

    add-double v23, v23, v1

    mul-double v23, v23, v32

    aput-wide v23, v8, v34

    mul-double v21, v21, v13

    add-double v21, v21, v1

    mul-double v21, v21, v1

    aput-wide v21, v8, v6

    mul-double v13, v13, v19

    add-double/2addr v13, v1

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double/2addr v13, v11

    aput-wide v13, v8, v31

    sub-double v11, v9, v1

    mul-double v27, v27, v11

    add-double v27, v27, v1

    mul-double v27, v27, v32

    aput-wide v27, v15, v34

    mul-double v25, v25, v11

    add-double v25, v25, v1

    mul-double v25, v25, v1

    aput-wide v25, v15, v6

    mul-double v11, v11, v32

    add-double/2addr v11, v1

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double/2addr v11, v13

    aput-wide v11, v15, v31

    goto :goto_1

    :cond_1
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    aput-wide v32, v8, v34

    aput-wide v1, v8, v6

    aput-wide v13, v8, v31

    aput-wide v32, v15, v34

    aput-wide v1, v15, v6

    aput-wide v13, v15, v31

    .line 328
    :goto_1
    iget-object v11, v0, Lcom/can/tool/TrackData$TrackParam;->mlPhyPoint:Lcom/can/tool/TrackData$DPonit;

    iget-object v12, v0, Lcom/can/tool/TrackData$TrackParam;->mrPhyPoint:Lcom/can/tool/TrackData$DPonit;

    const v13, 0x3dcccccd    # 0.1f

    iput v13, v12, Lcom/can/tool/TrackData$DPonit;->sy:F

    iput v13, v11, Lcom/can/tool/TrackData$DPonit;->sy:F

    :goto_2
    iget-object v11, v0, Lcom/can/tool/TrackData$TrackParam;->mlPhyPoint:Lcom/can/tool/TrackData$DPonit;

    iget v11, v11, Lcom/can/tool/TrackData$DPonit;->sy:F

    float-to-double v11, v11

    const-wide v13, 0x4009333333333334L    # 3.1500000000000004

    cmpg-double v11, v11, v13

    if-gtz v11, :cond_c

    .line 331
    iget-wide v11, v0, Lcom/can/tool/TrackData$TrackParam;->mdParamphi:D

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-lez v11, :cond_2

    iget-object v11, v0, Lcom/can/tool/TrackData$TrackParam;->mlPhyPoint:Lcom/can/tool/TrackData$DPonit;

    iget v11, v11, Lcom/can/tool/TrackData$DPonit;->sy:F

    float-to-double v11, v11

    add-double v18, v4, v9

    div-double v18, v29, v18

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v18, v18, v16

    cmpg-double v11, v11, v18

    if-lez v11, :cond_3

    :cond_2
    iget-wide v11, v0, Lcom/can/tool/TrackData$TrackParam;->mdParamphi:D

    cmpg-double v11, v11, v13

    if-gtz v11, :cond_4

    :cond_3
    move v11, v6

    goto :goto_3

    :cond_4
    move/from16 v11, v34

    .line 334
    :goto_3
    iget-wide v1, v0, Lcom/can/tool/TrackData$TrackParam;->mdParamphi:D

    cmpg-double v1, v1, v13

    if-gez v1, :cond_5

    iget-object v1, v0, Lcom/can/tool/TrackData$TrackParam;->mrPhyPoint:Lcom/can/tool/TrackData$DPonit;

    iget v1, v1, Lcom/can/tool/TrackData$DPonit;->sy:F

    float-to-double v1, v1

    add-double v20, v4, v9

    div-double v20, v29, v20

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v20, v20, v16

    cmpg-double v1, v1, v20

    if-lez v1, :cond_6

    goto :goto_4

    :cond_5
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    :goto_4
    iget-wide v1, v0, Lcom/can/tool/TrackData$TrackParam;->mdParamphi:D

    cmpl-double v1, v1, v13

    if-ltz v1, :cond_7

    :cond_6
    move v1, v6

    goto :goto_5

    :cond_7
    move/from16 v1, v34

    .line 338
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/can/tool/TrackData$TrackParam;->PhyTrack()V

    .line 339
    iget-wide v12, v0, Lcom/can/tool/TrackData$TrackParam;->mdParamalpha:D

    invoke-virtual {v0, v12, v13}, Lcom/can/tool/TrackData$TrackParam;->PhyToScr(D)Z

    const/4 v2, 0x0

    const-wide v12, 0x3ff0cccccccccccdL    # 1.05

    if-eqz v11, :cond_9

    .line 341
    iget-object v11, v0, Lcom/can/tool/TrackData$TrackParam;->mlScrPoint:Lcom/can/tool/TrackData$SPonit;

    iget v11, v11, Lcom/can/tool/TrackData$SPonit;->sy:F

    cmpl-float v11, v11, v2

    if-lez v11, :cond_9

    iget-object v11, v0, Lcom/can/tool/TrackData$TrackParam;->mlScrPoint:Lcom/can/tool/TrackData$SPonit;

    iget v11, v11, Lcom/can/tool/TrackData$SPonit;->sy:F

    iget v14, v0, Lcom/can/tool/TrackData$TrackParam;->miParamq:I

    add-int/lit8 v14, v14, -0x32

    int-to-float v14, v14

    cmpg-float v11, v11, v14

    if-gez v11, :cond_9

    .line 346
    new-instance v11, Lcom/can/tool/TrackData$SPonit;

    iget-object v14, v0, Lcom/can/tool/TrackData$TrackParam;->mlScrPoint:Lcom/can/tool/TrackData$SPonit;

    iget v14, v14, Lcom/can/tool/TrackData$SPonit;->sx:F

    iget-object v6, v0, Lcom/can/tool/TrackData$TrackParam;->mlScrPoint:Lcom/can/tool/TrackData$SPonit;

    iget v6, v6, Lcom/can/tool/TrackData$SPonit;->sy:F

    invoke-direct {v11, v14, v6}, Lcom/can/tool/TrackData$SPonit;-><init>(FF)V

    .line 347
    iget-object v6, v0, Lcom/can/tool/TrackData$TrackParam;->mVTrackleft:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/can/tool/TrackData$SPointEx;

    iget-object v6, v6, Lcom/can/tool/TrackData$SPointEx;->mslPonits:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v6, v34

    :goto_6
    if-ge v6, v7, :cond_9

    .line 351
    iget-object v11, v0, Lcom/can/tool/TrackData$TrackParam;->mlPhyPoint:Lcom/can/tool/TrackData$DPonit;

    iget v11, v11, Lcom/can/tool/TrackData$DPonit;->sy:F

    move v14, v3

    float-to-double v2, v11

    aget-wide v22, v8, v6

    cmpg-double v2, v2, v22

    if-gez v2, :cond_8

    iget-object v2, v0, Lcom/can/tool/TrackData$TrackParam;->mlPhyPoint:Lcom/can/tool/TrackData$DPonit;

    iget v2, v2, Lcom/can/tool/TrackData$DPonit;->sy:F

    float-to-double v2, v2

    mul-double/2addr v2, v12

    aget-wide v22, v8, v6

    cmpl-double v2, v2, v22

    if-lez v2, :cond_8

    .line 353
    iget-object v2, v0, Lcom/can/tool/TrackData$TrackParam;->mbyLineLeft:[[I

    aget-object v2, v2, v14

    iget-object v3, v0, Lcom/can/tool/TrackData$TrackParam;->mVTrackleft:Ljava/util/ArrayList;

    .line 354
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPointEx;

    iget-object v3, v3, Lcom/can/tool/TrackData$SPointEx;->mslPonits:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    aput v3, v2, v6

    :cond_8
    add-int/lit8 v6, v6, 0x1

    move v3, v14

    const/4 v2, 0x0

    goto :goto_6

    :cond_9
    move v14, v3

    if-eqz v1, :cond_b

    .line 358
    iget-object v1, v0, Lcom/can/tool/TrackData$TrackParam;->mrScrPoint:Lcom/can/tool/TrackData$SPonit;

    iget v1, v1, Lcom/can/tool/TrackData$SPonit;->sy:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_b

    iget-object v1, v0, Lcom/can/tool/TrackData$TrackParam;->mrScrPoint:Lcom/can/tool/TrackData$SPonit;

    iget v1, v1, Lcom/can/tool/TrackData$SPonit;->sy:F

    iget v2, v0, Lcom/can/tool/TrackData$TrackParam;->miParamq:I

    add-int/lit8 v2, v2, -0x32

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_b

    .line 363
    new-instance v1, Lcom/can/tool/TrackData$SPonit;

    iget-object v2, v0, Lcom/can/tool/TrackData$TrackParam;->mrScrPoint:Lcom/can/tool/TrackData$SPonit;

    iget v2, v2, Lcom/can/tool/TrackData$SPonit;->sx:F

    iget-object v3, v0, Lcom/can/tool/TrackData$TrackParam;->mrScrPoint:Lcom/can/tool/TrackData$SPonit;

    iget v3, v3, Lcom/can/tool/TrackData$SPonit;->sy:F

    invoke-direct {v1, v2, v3}, Lcom/can/tool/TrackData$SPonit;-><init>(FF)V

    .line 364
    iget-object v2, v0, Lcom/can/tool/TrackData$TrackParam;->mVTrackright:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/can/tool/TrackData$SPointEx;

    iget-object v2, v2, Lcom/can/tool/TrackData$SPointEx;->msrPonits:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v1, v34

    :goto_7
    if-ge v1, v7, :cond_b

    .line 367
    iget-object v2, v0, Lcom/can/tool/TrackData$TrackParam;->mrPhyPoint:Lcom/can/tool/TrackData$DPonit;

    iget v2, v2, Lcom/can/tool/TrackData$DPonit;->sy:F

    float-to-double v2, v2

    aget-wide v21, v15, v1

    cmpg-double v2, v2, v21

    if-gez v2, :cond_a

    iget-object v2, v0, Lcom/can/tool/TrackData$TrackParam;->mrPhyPoint:Lcom/can/tool/TrackData$DPonit;

    iget v2, v2, Lcom/can/tool/TrackData$DPonit;->sy:F

    float-to-double v2, v2

    mul-double/2addr v2, v12

    aget-wide v21, v15, v1

    cmpl-double v2, v2, v21

    if-lez v2, :cond_a

    .line 369
    iget-object v2, v0, Lcom/can/tool/TrackData$TrackParam;->mbyLineRight:[[I

    aget-object v2, v2, v14

    iget-object v3, v0, Lcom/can/tool/TrackData$TrackParam;->mVTrackright:Ljava/util/ArrayList;

    .line 370
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPointEx;

    iget-object v3, v3, Lcom/can/tool/TrackData$SPointEx;->msrPonits:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    aput v3, v2, v1

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 376
    :cond_b
    iget-object v1, v0, Lcom/can/tool/TrackData$TrackParam;->mlPhyPoint:Lcom/can/tool/TrackData$DPonit;

    iget v2, v1, Lcom/can/tool/TrackData$DPonit;->sy:F

    float-to-double v2, v2

    mul-double/2addr v2, v12

    double-to-float v2, v2

    iput v2, v1, Lcom/can/tool/TrackData$DPonit;->sy:F

    .line 377
    iget-object v1, v0, Lcom/can/tool/TrackData$TrackParam;->mrPhyPoint:Lcom/can/tool/TrackData$DPonit;

    iget v2, v1, Lcom/can/tool/TrackData$DPonit;->sy:F

    float-to-double v2, v2

    mul-double/2addr v2, v12

    double-to-float v2, v2

    iput v2, v1, Lcom/can/tool/TrackData$DPonit;->sy:F

    move v3, v14

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_c
    move v14, v3

    .line 380
    iget-object v1, v0, Lcom/can/tool/TrackData$TrackParam;->mbyLineLeft:[[I

    aget-object v1, v1, v14

    iget-object v2, v0, Lcom/can/tool/TrackData$TrackParam;->mVTrackleft:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/can/tool/TrackData$SPointEx;

    iget-object v2, v2, Lcom/can/tool/TrackData$SPointEx;->mslPonits:Ljava/util/ArrayList;

    .line 381
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aput v2, v1, v7

    .line 382
    iget-object v1, v0, Lcom/can/tool/TrackData$TrackParam;->mbyLineRight:[[I

    aget-object v1, v1, v14

    iget-object v2, v0, Lcom/can/tool/TrackData$TrackParam;->mVTrackright:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/can/tool/TrackData$SPointEx;

    iget-object v2, v2, Lcom/can/tool/TrackData$SPointEx;->msrPonits:Ljava/util/ArrayList;

    .line 383
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    aput v2, v1, v7

    .line 276
    iget-wide v1, v0, Lcom/can/tool/TrackData$TrackParam;->mdParamphi:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    goto/16 :goto_0

    :cond_d
    move v3, v6

    return v3
.end method

.method public DrawTrack(Landroid/graphics/Canvas;Landroid/graphics/Paint;D)V
    .locals 5

    neg-double p3, p3

    const-wide/high16 v0, -0x3fc2000000000000L    # -30.0

    cmpg-double v2, p3, v0

    if-gez v2, :cond_0

    move-wide p3, v0

    :cond_0
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    cmpl-double v2, p3, v0

    if-lez v2, :cond_1

    move-wide p3, v0

    :cond_1
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    add-double/2addr p3, v0

    double-to-int p3, p3

    .line 398
    new-instance p4, Landroid/graphics/Path;

    invoke-direct {p4}, Landroid/graphics/Path;-><init>()V

    const v0, -0xff0100

    .line 399
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/can/tool/TrackData$TrackParam;->mbyLineLeft:[[I

    aget-object v0, v0, p3

    const/4 v1, 0x2

    aget v0, v0, v1

    :goto_0
    iget-object v2, p0, Lcom/can/tool/TrackData$TrackParam;->mbyLineLeft:[[I

    aget-object v2, v2, p3

    const/4 v3, 0x3

    aget v2, v2, v3

    if-ge v0, v2, :cond_2

    .line 403
    iget-object v2, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackleft:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/can/tool/TrackData$SPointEx;

    iget-object v2, v2, Lcom/can/tool/TrackData$SPointEx;->mslPonits:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/can/tool/TrackData$SPonit;

    iget v2, v2, Lcom/can/tool/TrackData$SPonit;->sx:F

    iget-object v3, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackleft:Ljava/util/ArrayList;

    .line 404
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPointEx;

    iget-object v3, v3, Lcom/can/tool/TrackData$SPointEx;->mslPonits:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPonit;

    iget v3, v3, Lcom/can/tool/TrackData$SPonit;->sy:F

    .line 403
    invoke-virtual {p4, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 405
    iget-object v2, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackleft:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/can/tool/TrackData$SPointEx;

    iget-object v2, v2, Lcom/can/tool/TrackData$SPointEx;->mslPonits:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/can/tool/TrackData$SPonit;

    iget v2, v2, Lcom/can/tool/TrackData$SPonit;->sx:F

    iget-object v3, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackleft:Ljava/util/ArrayList;

    .line 406
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPointEx;

    iget-object v3, v3, Lcom/can/tool/TrackData$SPointEx;->mslPonits:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPonit;

    iget v3, v3, Lcom/can/tool/TrackData$SPonit;->sy:F

    .line 405
    invoke-virtual {p4, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 407
    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 410
    :cond_2
    iget-object v0, p0, Lcom/can/tool/TrackData$TrackParam;->mbyLineRight:[[I

    aget-object v0, v0, p3

    aget v0, v0, v1

    :goto_1
    iget-object v2, p0, Lcom/can/tool/TrackData$TrackParam;->mbyLineRight:[[I

    aget-object v2, v2, p3

    aget v2, v2, v3

    if-ge v0, v2, :cond_3

    .line 411
    iget-object v2, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackright:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/can/tool/TrackData$SPointEx;

    iget-object v2, v2, Lcom/can/tool/TrackData$SPointEx;->msrPonits:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/can/tool/TrackData$SPonit;

    iget v2, v2, Lcom/can/tool/TrackData$SPonit;->sx:F

    iget-object v4, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackright:Ljava/util/ArrayList;

    .line 412
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/can/tool/TrackData$SPointEx;

    iget-object v4, v4, Lcom/can/tool/TrackData$SPointEx;->msrPonits:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/can/tool/TrackData$SPonit;

    iget v4, v4, Lcom/can/tool/TrackData$SPonit;->sy:F

    .line 411
    invoke-virtual {p4, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 413
    iget-object v2, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackright:Ljava/util/ArrayList;

    .line 414
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/can/tool/TrackData$SPointEx;

    iget-object v2, v2, Lcom/can/tool/TrackData$SPointEx;->msrPonits:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/can/tool/TrackData$SPonit;

    iget v2, v2, Lcom/can/tool/TrackData$SPonit;->sx:F

    iget-object v4, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackright:Ljava/util/ArrayList;

    .line 415
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/can/tool/TrackData$SPointEx;

    iget-object v4, v4, Lcom/can/tool/TrackData$SPointEx;->msrPonits:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/can/tool/TrackData$SPonit;

    iget v4, v4, Lcom/can/tool/TrackData$SPonit;->sy:F

    .line 413
    invoke-virtual {p4, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 416
    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 419
    :cond_3
    iget-object v0, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackleft:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/can/tool/TrackData$SPointEx;

    iget-object v0, v0, Lcom/can/tool/TrackData$SPointEx;->mslPonits:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/can/tool/TrackData$TrackParam;->mbyLineLeft:[[I

    aget-object v2, v2, p3

    aget v2, v2, v3

    .line 420
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/can/tool/TrackData$SPonit;

    iget v0, v0, Lcom/can/tool/TrackData$SPonit;->sx:F

    iget-object v2, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackleft:Ljava/util/ArrayList;

    .line 421
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/can/tool/TrackData$SPointEx;

    iget-object v2, v2, Lcom/can/tool/TrackData$SPointEx;->mslPonits:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/can/tool/TrackData$TrackParam;->mbyLineLeft:[[I

    aget-object v4, v4, p3

    aget v4, v4, v3

    .line 422
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/can/tool/TrackData$SPonit;

    iget v2, v2, Lcom/can/tool/TrackData$SPonit;->sy:F

    .line 419
    invoke-virtual {p4, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 423
    iget-object v0, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackright:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/can/tool/TrackData$SPointEx;

    iget-object v0, v0, Lcom/can/tool/TrackData$SPointEx;->msrPonits:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/can/tool/TrackData$TrackParam;->mbyLineRight:[[I

    aget-object v2, v2, p3

    aget v2, v2, v3

    .line 424
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/can/tool/TrackData$SPonit;

    iget v0, v0, Lcom/can/tool/TrackData$SPonit;->sx:F

    iget-object v2, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackright:Ljava/util/ArrayList;

    .line 425
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/can/tool/TrackData$SPointEx;

    iget-object v2, v2, Lcom/can/tool/TrackData$SPointEx;->msrPonits:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/can/tool/TrackData$TrackParam;->mbyLineRight:[[I

    aget-object v4, v4, p3

    aget v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/can/tool/TrackData$SPonit;

    iget v2, v2, Lcom/can/tool/TrackData$SPonit;->sy:F

    .line 423
    invoke-virtual {p4, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 426
    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 428
    iget-object v0, p0, Lcom/can/tool/TrackData$TrackParam;->mbyLineLeft:[[I

    aget-object v0, v0, p3

    const/4 v2, 0x1

    aget v0, v0, v2

    :goto_2
    iget-object v3, p0, Lcom/can/tool/TrackData$TrackParam;->mbyLineLeft:[[I

    aget-object v3, v3, p3

    aget v3, v3, v1

    if-ge v0, v3, :cond_4

    .line 429
    iget-object v3, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackleft:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPointEx;

    iget-object v3, v3, Lcom/can/tool/TrackData$SPointEx;->mslPonits:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPonit;

    iget v3, v3, Lcom/can/tool/TrackData$SPonit;->sx:F

    iget-object v4, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackleft:Ljava/util/ArrayList;

    .line 430
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/can/tool/TrackData$SPointEx;

    iget-object v4, v4, Lcom/can/tool/TrackData$SPointEx;->mslPonits:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/can/tool/TrackData$SPonit;

    iget v4, v4, Lcom/can/tool/TrackData$SPonit;->sy:F

    .line 429
    invoke-virtual {p4, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 431
    iget-object v3, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackleft:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPointEx;

    iget-object v3, v3, Lcom/can/tool/TrackData$SPointEx;->mslPonits:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPonit;

    iget v3, v3, Lcom/can/tool/TrackData$SPonit;->sx:F

    iget-object v4, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackleft:Ljava/util/ArrayList;

    .line 432
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/can/tool/TrackData$SPointEx;

    iget-object v4, v4, Lcom/can/tool/TrackData$SPointEx;->mslPonits:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/can/tool/TrackData$SPonit;

    iget v4, v4, Lcom/can/tool/TrackData$SPonit;->sy:F

    .line 431
    invoke-virtual {p4, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 433
    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 436
    :cond_4
    iget-object v0, p0, Lcom/can/tool/TrackData$TrackParam;->mbyLineRight:[[I

    aget-object v0, v0, p3

    aget v0, v0, v2

    :goto_3
    iget-object v3, p0, Lcom/can/tool/TrackData$TrackParam;->mbyLineRight:[[I

    aget-object v3, v3, p3

    aget v3, v3, v1

    if-ge v0, v3, :cond_5

    .line 437
    iget-object v3, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackright:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPointEx;

    iget-object v3, v3, Lcom/can/tool/TrackData$SPointEx;->msrPonits:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPonit;

    iget v3, v3, Lcom/can/tool/TrackData$SPonit;->sx:F

    iget-object v4, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackright:Ljava/util/ArrayList;

    .line 438
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/can/tool/TrackData$SPointEx;

    iget-object v4, v4, Lcom/can/tool/TrackData$SPointEx;->msrPonits:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/can/tool/TrackData$SPonit;

    iget v4, v4, Lcom/can/tool/TrackData$SPonit;->sy:F

    .line 437
    invoke-virtual {p4, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 439
    iget-object v3, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackright:Ljava/util/ArrayList;

    .line 440
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPointEx;

    iget-object v3, v3, Lcom/can/tool/TrackData$SPointEx;->msrPonits:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPonit;

    iget v3, v3, Lcom/can/tool/TrackData$SPonit;->sx:F

    iget-object v4, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackright:Ljava/util/ArrayList;

    .line 441
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/can/tool/TrackData$SPointEx;

    iget-object v4, v4, Lcom/can/tool/TrackData$SPointEx;->msrPonits:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/can/tool/TrackData$SPonit;

    iget v4, v4, Lcom/can/tool/TrackData$SPonit;->sy:F

    .line 439
    invoke-virtual {p4, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 442
    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_3

    .line 445
    :cond_5
    iget-object v0, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackleft:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/can/tool/TrackData$SPointEx;

    iget-object v0, v0, Lcom/can/tool/TrackData$SPointEx;->mslPonits:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/can/tool/TrackData$TrackParam;->mbyLineLeft:[[I

    aget-object v3, v3, p3

    aget v3, v3, v1

    .line 446
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/can/tool/TrackData$SPonit;

    iget v0, v0, Lcom/can/tool/TrackData$SPonit;->sx:F

    iget-object v3, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackleft:Ljava/util/ArrayList;

    .line 447
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPointEx;

    iget-object v3, v3, Lcom/can/tool/TrackData$SPointEx;->mslPonits:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/can/tool/TrackData$TrackParam;->mbyLineLeft:[[I

    aget-object v4, v4, p3

    aget v4, v4, v1

    .line 448
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPonit;

    iget v3, v3, Lcom/can/tool/TrackData$SPonit;->sy:F

    .line 445
    invoke-virtual {p4, v0, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 449
    iget-object v0, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackright:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/can/tool/TrackData$SPointEx;

    iget-object v0, v0, Lcom/can/tool/TrackData$SPointEx;->msrPonits:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/can/tool/TrackData$TrackParam;->mbyLineRight:[[I

    aget-object v3, v3, p3

    aget v3, v3, v1

    .line 450
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/can/tool/TrackData$SPonit;

    iget v0, v0, Lcom/can/tool/TrackData$SPonit;->sx:F

    iget-object v3, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackright:Ljava/util/ArrayList;

    .line 451
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPointEx;

    iget-object v3, v3, Lcom/can/tool/TrackData$SPointEx;->msrPonits:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/can/tool/TrackData$TrackParam;->mbyLineRight:[[I

    aget-object v4, v4, p3

    aget v1, v4, v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/can/tool/TrackData$SPonit;

    iget v1, v1, Lcom/can/tool/TrackData$SPonit;->sy:F

    .line 449
    invoke-virtual {p4, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 453
    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 455
    iget-object v0, p0, Lcom/can/tool/TrackData$TrackParam;->mbyLineLeft:[[I

    aget-object v0, v0, p3

    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_4
    iget-object v3, p0, Lcom/can/tool/TrackData$TrackParam;->mbyLineLeft:[[I

    aget-object v3, v3, p3

    aget v3, v3, v2

    if-ge v0, v3, :cond_6

    .line 456
    iget-object v3, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackleft:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPointEx;

    iget-object v3, v3, Lcom/can/tool/TrackData$SPointEx;->mslPonits:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPonit;

    iget v3, v3, Lcom/can/tool/TrackData$SPonit;->sx:F

    iget-object v4, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackleft:Ljava/util/ArrayList;

    .line 457
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/can/tool/TrackData$SPointEx;

    iget-object v4, v4, Lcom/can/tool/TrackData$SPointEx;->mslPonits:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/can/tool/TrackData$SPonit;

    iget v4, v4, Lcom/can/tool/TrackData$SPonit;->sy:F

    .line 456
    invoke-virtual {p4, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 458
    iget-object v3, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackleft:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPointEx;

    iget-object v3, v3, Lcom/can/tool/TrackData$SPointEx;->mslPonits:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPonit;

    iget v3, v3, Lcom/can/tool/TrackData$SPonit;->sx:F

    iget-object v4, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackleft:Ljava/util/ArrayList;

    .line 459
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/can/tool/TrackData$SPointEx;

    iget-object v4, v4, Lcom/can/tool/TrackData$SPointEx;->mslPonits:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/can/tool/TrackData$SPonit;

    iget v4, v4, Lcom/can/tool/TrackData$SPonit;->sy:F

    .line 458
    invoke-virtual {p4, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 460
    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 462
    :cond_6
    iget-object v0, p0, Lcom/can/tool/TrackData$TrackParam;->mbyLineRight:[[I

    aget-object v0, v0, p3

    aget v0, v0, v1

    :goto_5
    iget-object v3, p0, Lcom/can/tool/TrackData$TrackParam;->mbyLineRight:[[I

    aget-object v3, v3, p3

    aget v3, v3, v2

    if-ge v0, v3, :cond_7

    .line 463
    iget-object v3, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackright:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPointEx;

    iget-object v3, v3, Lcom/can/tool/TrackData$SPointEx;->msrPonits:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPonit;

    iget v3, v3, Lcom/can/tool/TrackData$SPonit;->sx:F

    iget-object v4, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackright:Ljava/util/ArrayList;

    .line 464
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/can/tool/TrackData$SPointEx;

    iget-object v4, v4, Lcom/can/tool/TrackData$SPointEx;->msrPonits:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/can/tool/TrackData$SPonit;

    iget v4, v4, Lcom/can/tool/TrackData$SPonit;->sy:F

    .line 463
    invoke-virtual {p4, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 465
    iget-object v3, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackright:Ljava/util/ArrayList;

    .line 466
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPointEx;

    iget-object v3, v3, Lcom/can/tool/TrackData$SPointEx;->msrPonits:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPonit;

    iget v3, v3, Lcom/can/tool/TrackData$SPonit;->sx:F

    iget-object v4, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackright:Ljava/util/ArrayList;

    .line 467
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/can/tool/TrackData$SPointEx;

    iget-object v4, v4, Lcom/can/tool/TrackData$SPointEx;->msrPonits:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/can/tool/TrackData$SPonit;

    iget v4, v4, Lcom/can/tool/TrackData$SPonit;->sy:F

    .line 465
    invoke-virtual {p4, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 468
    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 470
    :cond_7
    iget-object v0, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackleft:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/can/tool/TrackData$SPointEx;

    iget-object v0, v0, Lcom/can/tool/TrackData$SPointEx;->mslPonits:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/can/tool/TrackData$TrackParam;->mbyLineLeft:[[I

    aget-object v3, v3, p3

    aget v3, v3, v2

    .line 471
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/can/tool/TrackData$SPonit;

    iget v0, v0, Lcom/can/tool/TrackData$SPonit;->sx:F

    iget-object v3, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackleft:Ljava/util/ArrayList;

    .line 472
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPointEx;

    iget-object v3, v3, Lcom/can/tool/TrackData$SPointEx;->mslPonits:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/can/tool/TrackData$TrackParam;->mbyLineLeft:[[I

    aget-object v4, v4, p3

    aget v4, v4, v2

    .line 473
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPonit;

    iget v3, v3, Lcom/can/tool/TrackData$SPonit;->sy:F

    .line 470
    invoke-virtual {p4, v0, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 474
    iget-object v0, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackright:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/can/tool/TrackData$SPointEx;

    iget-object v0, v0, Lcom/can/tool/TrackData$SPointEx;->msrPonits:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/can/tool/TrackData$TrackParam;->mbyLineRight:[[I

    aget-object v3, v3, p3

    aget v3, v3, v2

    .line 475
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/can/tool/TrackData$SPonit;

    iget v0, v0, Lcom/can/tool/TrackData$SPonit;->sx:F

    iget-object v3, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackright:Ljava/util/ArrayList;

    .line 476
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPointEx;

    iget-object v3, v3, Lcom/can/tool/TrackData$SPointEx;->msrPonits:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/can/tool/TrackData$TrackParam;->mbyLineRight:[[I

    aget-object v4, v4, p3

    aget v2, v4, v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/can/tool/TrackData$SPonit;

    iget v2, v2, Lcom/can/tool/TrackData$SPonit;->sy:F

    .line 474
    invoke-virtual {p4, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 477
    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move v0, v1

    .line 479
    :goto_6
    iget-object v2, p0, Lcom/can/tool/TrackData$TrackParam;->mbyLineLeft:[[I

    aget-object v2, v2, p3

    aget v2, v2, v1

    if-ge v0, v2, :cond_8

    .line 480
    iget-object v2, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackleft:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/can/tool/TrackData$SPointEx;

    iget-object v2, v2, Lcom/can/tool/TrackData$SPointEx;->mslPonits:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/can/tool/TrackData$SPonit;

    iget v2, v2, Lcom/can/tool/TrackData$SPonit;->sx:F

    iget-object v3, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackleft:Ljava/util/ArrayList;

    .line 481
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPointEx;

    iget-object v3, v3, Lcom/can/tool/TrackData$SPointEx;->mslPonits:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPonit;

    iget v3, v3, Lcom/can/tool/TrackData$SPonit;->sy:F

    .line 480
    invoke-virtual {p4, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 482
    iget-object v2, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackleft:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/can/tool/TrackData$SPointEx;

    iget-object v2, v2, Lcom/can/tool/TrackData$SPointEx;->mslPonits:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/can/tool/TrackData$SPonit;

    iget v2, v2, Lcom/can/tool/TrackData$SPonit;->sx:F

    iget-object v3, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackleft:Ljava/util/ArrayList;

    .line 483
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPointEx;

    iget-object v3, v3, Lcom/can/tool/TrackData$SPointEx;->mslPonits:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPonit;

    iget v3, v3, Lcom/can/tool/TrackData$SPonit;->sy:F

    .line 482
    invoke-virtual {p4, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 484
    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_6

    :cond_8
    move v0, v1

    .line 487
    :goto_7
    iget-object v2, p0, Lcom/can/tool/TrackData$TrackParam;->mbyLineRight:[[I

    aget-object v3, v2, p3

    aget v3, v3, v1

    if-ge v0, v3, :cond_9

    .line 488
    iget-object v2, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackright:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/can/tool/TrackData$SPointEx;

    iget-object v2, v2, Lcom/can/tool/TrackData$SPointEx;->msrPonits:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/can/tool/TrackData$SPonit;

    iget v2, v2, Lcom/can/tool/TrackData$SPonit;->sx:F

    iget-object v3, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackright:Ljava/util/ArrayList;

    .line 489
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPointEx;

    iget-object v3, v3, Lcom/can/tool/TrackData$SPointEx;->msrPonits:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPonit;

    iget v3, v3, Lcom/can/tool/TrackData$SPonit;->sy:F

    .line 488
    invoke-virtual {p4, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 490
    iget-object v2, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackright:Ljava/util/ArrayList;

    .line 491
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/can/tool/TrackData$SPointEx;

    iget-object v2, v2, Lcom/can/tool/TrackData$SPointEx;->msrPonits:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/can/tool/TrackData$SPonit;

    iget v2, v2, Lcom/can/tool/TrackData$SPonit;->sx:F

    iget-object v3, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackright:Ljava/util/ArrayList;

    .line 492
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPointEx;

    iget-object v3, v3, Lcom/can/tool/TrackData$SPointEx;->msrPonits:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/can/tool/TrackData$SPonit;

    iget v3, v3, Lcom/can/tool/TrackData$SPonit;->sy:F

    .line 490
    invoke-virtual {p4, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 493
    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_7

    .line 496
    :cond_9
    iget-object v0, p0, Lcom/can/tool/TrackData$TrackParam;->mbyLineLeft:[[I

    aget-object v0, v0, p3

    aget v0, v0, v1

    if-eqz v0, :cond_a

    aget-object v0, v2, p3

    aget v0, v0, v1

    if-eqz v0, :cond_a

    .line 497
    iget-object v0, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackleft:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/can/tool/TrackData$SPointEx;

    iget-object v0, v0, Lcom/can/tool/TrackData$SPointEx;->msrPonits:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/can/tool/TrackData$TrackParam;->mbyLineLeft:[[I

    aget-object v2, v2, p3

    aget v2, v2, v1

    .line 498
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/can/tool/TrackData$SPonit;

    iget v0, v0, Lcom/can/tool/TrackData$SPonit;->sx:F

    iget-object v2, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackleft:Ljava/util/ArrayList;

    .line 499
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/can/tool/TrackData$SPointEx;

    iget-object v2, v2, Lcom/can/tool/TrackData$SPointEx;->msrPonits:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/can/tool/TrackData$TrackParam;->mbyLineLeft:[[I

    aget-object v3, v3, p3

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/can/tool/TrackData$SPonit;

    iget v2, v2, Lcom/can/tool/TrackData$SPonit;->sy:F

    .line 497
    invoke-virtual {p4, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 500
    iget-object v0, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackright:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/can/tool/TrackData$SPointEx;

    iget-object v0, v0, Lcom/can/tool/TrackData$SPointEx;->msrPonits:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/can/tool/TrackData$TrackParam;->mbyLineRight:[[I

    aget-object v2, v2, p3

    aget v2, v2, v1

    .line 501
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/can/tool/TrackData$SPonit;

    iget v0, v0, Lcom/can/tool/TrackData$SPonit;->sx:F

    iget-object v2, p0, Lcom/can/tool/TrackData$TrackParam;->mVTrackright:Ljava/util/ArrayList;

    .line 502
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/can/tool/TrackData$SPointEx;

    iget-object v2, v2, Lcom/can/tool/TrackData$SPointEx;->msrPonits:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/can/tool/TrackData$TrackParam;->mbyLineRight:[[I

    aget-object p0, p0, p3

    aget p0, p0, v1

    .line 503
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/can/tool/TrackData$SPonit;

    iget p0, p0, Lcom/can/tool/TrackData$SPonit;->sy:F

    .line 500
    invoke-virtual {p4, v0, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 504
    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_a
    return-void
.end method

.method PhyToScr(D)Z
    .locals 23

    move-object/from16 v0, p0

    .line 240
    iget-object v1, v0, Lcom/can/tool/TrackData$TrackParam;->mlPhyPoint:Lcom/can/tool/TrackData$DPonit;

    iget v1, v1, Lcom/can/tool/TrackData$DPonit;->sx:F

    float-to-double v1, v1

    .line 241
    iget-object v3, v0, Lcom/can/tool/TrackData$TrackParam;->mlPhyPoint:Lcom/can/tool/TrackData$DPonit;

    iget v3, v3, Lcom/can/tool/TrackData$DPonit;->sy:F

    float-to-double v3, v3

    .line 242
    iget-object v5, v0, Lcom/can/tool/TrackData$TrackParam;->mrPhyPoint:Lcom/can/tool/TrackData$DPonit;

    iget v5, v5, Lcom/can/tool/TrackData$DPonit;->sx:F

    float-to-double v5, v5

    .line 243
    iget-object v7, v0, Lcom/can/tool/TrackData$TrackParam;->mrPhyPoint:Lcom/can/tool/TrackData$DPonit;

    iget v7, v7, Lcom/can/tool/TrackData$DPonit;->sy:F

    float-to-double v7, v7

    const-wide v9, 0x4066800000000000L    # 180.0

    div-double v11, p1, v9

    const-wide v13, 0x400921fa00000000L    # 3.141590118408203

    mul-double/2addr v11, v13

    move-wide v15, v5

    .line 247
    iget-wide v5, v0, Lcom/can/tool/TrackData$TrackParam;->mdParamtheta:D

    div-double/2addr v5, v9

    mul-double/2addr v5, v13

    .line 250
    iget-boolean v9, v0, Lcom/can/tool/TrackData$TrackParam;->mbLeftTrackAvailable:Z

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    if-eqz v9, :cond_0

    .line 251
    iget-object v9, v0, Lcom/can/tool/TrackData$TrackParam;->mlScrPoint:Lcom/can/tool/TrackData$SPonit;

    iget v10, v0, Lcom/can/tool/TrackData$TrackParam;->miParamp:I

    move-wide/from16 v17, v7

    int-to-double v7, v10

    move-object/from16 p1, v9

    iget-wide v9, v0, Lcom/can/tool/TrackData$TrackParam;->mdParamh:D

    mul-double/2addr v9, v13

    div-double v19, v11, v13

    .line 252
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->tan(D)D

    move-result-wide v21

    mul-double v9, v9, v21

    div-double/2addr v7, v9

    iget-wide v9, v0, Lcom/can/tool/TrackData$TrackParam;->mdParamh:D

    div-double v9, v3, v9

    .line 253
    invoke-static {v9, v10}, Ljava/lang/Math;->atan(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    iget-wide v13, v0, Lcom/can/tool/TrackData$TrackParam;->mdParamh:D

    div-double v13, v3, v13

    .line 254
    invoke-static {v13, v14}, Ljava/lang/Math;->atan(D)D

    move-result-wide v13

    sub-double v13, v5, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    div-double/2addr v9, v13

    mul-double/2addr v7, v9

    mul-double/2addr v7, v1

    iget v1, v0, Lcom/can/tool/TrackData$TrackParam;->miParamp:I

    div-int/lit8 v1, v1, 0x2

    int-to-double v1, v1

    add-double/2addr v7, v1

    double-to-float v1, v7

    move-object/from16 v2, p1

    iput v1, v2, Lcom/can/tool/TrackData$SPonit;->sx:F

    .line 255
    iget-object v1, v0, Lcom/can/tool/TrackData$TrackParam;->mlScrPoint:Lcom/can/tool/TrackData$SPonit;

    iget v2, v0, Lcom/can/tool/TrackData$TrackParam;->miParamq:I

    iget v7, v0, Lcom/can/tool/TrackData$TrackParam;->miParamm:I

    mul-int/2addr v2, v7

    int-to-double v7, v2

    iget v2, v0, Lcom/can/tool/TrackData$TrackParam;->miParamn:I

    mul-int/lit8 v2, v2, 0x2

    int-to-double v9, v2

    .line 256
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->tan(D)D

    move-result-wide v13

    mul-double/2addr v9, v13

    div-double/2addr v7, v9

    iget-wide v9, v0, Lcom/can/tool/TrackData$TrackParam;->mdParamh:D

    div-double/2addr v3, v9

    .line 257
    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    sub-double v2, v5, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v7, v2

    iget v2, v0, Lcom/can/tool/TrackData$TrackParam;->miParamq:I

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    add-double/2addr v7, v2

    double-to-float v2, v7

    iput v2, v1, Lcom/can/tool/TrackData$SPonit;->sy:F

    goto :goto_0

    :cond_0
    move-wide/from16 v17, v7

    .line 261
    :goto_0
    iget-boolean v1, v0, Lcom/can/tool/TrackData$TrackParam;->mbRightTrackAvailable:Z

    if-eqz v1, :cond_1

    .line 262
    iget-object v1, v0, Lcom/can/tool/TrackData$TrackParam;->mrScrPoint:Lcom/can/tool/TrackData$SPonit;

    iget v2, v0, Lcom/can/tool/TrackData$TrackParam;->miParamp:I

    int-to-double v2, v2

    iget-wide v7, v0, Lcom/can/tool/TrackData$TrackParam;->mdParamh:D

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v9

    div-double/2addr v11, v9

    .line 263
    invoke-static {v11, v12}, Ljava/lang/Math;->tan(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    div-double/2addr v2, v7

    iget-wide v7, v0, Lcom/can/tool/TrackData$TrackParam;->mdParamh:D

    div-double v7, v17, v7

    .line 264
    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    iget-wide v9, v0, Lcom/can/tool/TrackData$TrackParam;->mdParamh:D

    div-double v9, v17, v9

    .line 265
    invoke-static {v9, v10}, Ljava/lang/Math;->atan(D)D

    move-result-wide v9

    sub-double v9, v5, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    div-double/2addr v7, v9

    mul-double/2addr v2, v7

    mul-double/2addr v2, v15

    iget v4, v0, Lcom/can/tool/TrackData$TrackParam;->miParamp:I

    div-int/lit8 v4, v4, 0x2

    int-to-double v7, v4

    add-double/2addr v2, v7

    double-to-float v2, v2

    iput v2, v1, Lcom/can/tool/TrackData$SPonit;->sx:F

    .line 266
    iget-object v1, v0, Lcom/can/tool/TrackData$TrackParam;->mrScrPoint:Lcom/can/tool/TrackData$SPonit;

    iget v2, v0, Lcom/can/tool/TrackData$TrackParam;->miParamq:I

    iget v3, v0, Lcom/can/tool/TrackData$TrackParam;->miParamm:I

    mul-int/2addr v2, v3

    int-to-double v2, v2

    iget v4, v0, Lcom/can/tool/TrackData$TrackParam;->miParamn:I

    mul-int/lit8 v4, v4, 0x2

    int-to-double v7, v4

    .line 267
    invoke-static {v11, v12}, Ljava/lang/Math;->tan(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    div-double/2addr v2, v7

    iget-wide v7, v0, Lcom/can/tool/TrackData$TrackParam;->mdParamh:D

    div-double v7, v17, v7

    .line 268
    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget v0, v0, Lcom/can/tool/TrackData$TrackParam;->miParamq:I

    div-int/lit8 v0, v0, 0x2

    int-to-double v4, v0

    add-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, v1, Lcom/can/tool/TrackData$SPonit;->sy:F

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public PhyTrack()V
    .locals 14

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lcom/can/tool/TrackData$TrackParam;->mbLeftTrackAvailable:Z

    .line 174
    iput-boolean v0, p0, Lcom/can/tool/TrackData$TrackParam;->mbRightTrackAvailable:Z

    .line 176
    iget-wide v0, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamphi:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    const-wide v5, 0x3ff921fa00000000L    # 1.5707950592041016

    const-wide v7, 0x400921fa00000000L    # 3.141590118408203

    const-wide v9, 0x4066800000000000L    # 180.0

    const/4 v11, 0x0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    if-lez v4, :cond_2

    div-double/2addr v0, v9

    mul-double/2addr v0, v7

    .line 181
    iget-wide v7, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamL:D

    sub-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    mul-double/2addr v7, v0

    iget-wide v0, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamW:D

    div-double/2addr v0, v12

    sub-double/2addr v7, v0

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object v4, p0, Lcom/can/tool/TrackData$TrackParam;->mlPhyPoint:Lcom/can/tool/TrackData$DPonit;

    iget v4, v4, Lcom/can/tool/TrackData$DPonit;->sy:F

    float-to-double v7, v4

    iget-wide v9, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamD:D

    add-double/2addr v7, v9

    .line 183
    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    sub-double/2addr v0, v7

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 185
    iput-boolean v11, p0, Lcom/can/tool/TrackData$TrackParam;->mbLeftTrackAvailable:Z

    .line 187
    :cond_0
    iget-object v4, p0, Lcom/can/tool/TrackData$TrackParam;->mlPhyPoint:Lcom/can/tool/TrackData$DPonit;

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget-wide v7, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamL:D

    .line 188
    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    sub-double/2addr v0, v7

    iget-wide v7, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamd:D

    sub-double/2addr v0, v7

    double-to-float v0, v0

    iput v0, v4, Lcom/can/tool/TrackData$DPonit;->sx:F

    .line 191
    iget-wide v0, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamL:D

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    mul-double/2addr v0, v7

    iget-wide v7, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamW:D

    div-double/2addr v7, v12

    add-double/2addr v0, v7

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object v4, p0, Lcom/can/tool/TrackData$TrackParam;->mrPhyPoint:Lcom/can/tool/TrackData$DPonit;

    iget v4, v4, Lcom/can/tool/TrackData$DPonit;->sy:F

    float-to-double v7, v4

    iget-wide v9, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamD:D

    add-double/2addr v7, v9

    .line 193
    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    sub-double/2addr v0, v7

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    .line 195
    iput-boolean v11, p0, Lcom/can/tool/TrackData$TrackParam;->mbRightTrackAvailable:Z

    .line 197
    :cond_1
    iget-object v2, p0, Lcom/can/tool/TrackData$TrackParam;->mrPhyPoint:Lcom/can/tool/TrackData$DPonit;

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget-wide v3, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamL:D

    .line 198
    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    sub-double/2addr v0, v3

    iget-wide v3, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamd:D

    sub-double/2addr v0, v3

    double-to-float p0, v0

    iput p0, v2, Lcom/can/tool/TrackData$DPonit;->sx:F

    goto/16 :goto_0

    :cond_2
    cmpg-double v4, v0, v2

    if-gez v4, :cond_5

    neg-double v0, v0

    div-double/2addr v0, v9

    mul-double/2addr v0, v7

    .line 204
    iget-wide v7, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamL:D

    sub-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    mul-double/2addr v7, v0

    iget-wide v0, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamW:D

    div-double/2addr v0, v12

    add-double/2addr v7, v0

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object v4, p0, Lcom/can/tool/TrackData$TrackParam;->mlPhyPoint:Lcom/can/tool/TrackData$DPonit;

    iget v4, v4, Lcom/can/tool/TrackData$DPonit;->sy:F

    float-to-double v7, v4

    iget-wide v9, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamD:D

    add-double/2addr v7, v9

    .line 206
    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    sub-double/2addr v0, v7

    cmpg-double v4, v0, v2

    if-gez v4, :cond_3

    .line 208
    iput-boolean v11, p0, Lcom/can/tool/TrackData$TrackParam;->mbLeftTrackAvailable:Z

    .line 210
    :cond_3
    iget-object v4, p0, Lcom/can/tool/TrackData$TrackParam;->mlPhyPoint:Lcom/can/tool/TrackData$DPonit;

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    neg-double v0, v0

    iget-wide v7, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamL:D

    .line 211
    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v0, v7

    iget-wide v7, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamd:D

    sub-double/2addr v0, v7

    double-to-float v0, v0

    iput v0, v4, Lcom/can/tool/TrackData$DPonit;->sx:F

    .line 214
    iget-wide v0, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamL:D

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    mul-double/2addr v0, v7

    iget-wide v7, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamW:D

    div-double/2addr v7, v12

    sub-double/2addr v0, v7

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object v4, p0, Lcom/can/tool/TrackData$TrackParam;->mrPhyPoint:Lcom/can/tool/TrackData$DPonit;

    iget v4, v4, Lcom/can/tool/TrackData$DPonit;->sy:F

    float-to-double v7, v4

    iget-wide v9, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamD:D

    add-double/2addr v7, v9

    .line 216
    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    sub-double/2addr v0, v7

    cmpg-double v2, v0, v2

    if-gez v2, :cond_4

    .line 218
    iput-boolean v11, p0, Lcom/can/tool/TrackData$TrackParam;->mbRightTrackAvailable:Z

    .line 220
    :cond_4
    iget-object v2, p0, Lcom/can/tool/TrackData$TrackParam;->mrPhyPoint:Lcom/can/tool/TrackData$DPonit;

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    neg-double v0, v0

    iget-wide v3, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamL:D

    .line 221
    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v0, v3

    iget-wide v3, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamd:D

    sub-double/2addr v0, v3

    double-to-float p0, v0

    iput p0, v2, Lcom/can/tool/TrackData$DPonit;->sx:F

    goto :goto_0

    .line 224
    :cond_5
    iget-object v0, p0, Lcom/can/tool/TrackData$TrackParam;->mlPhyPoint:Lcom/can/tool/TrackData$DPonit;

    iget-wide v1, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamW:D

    neg-double v1, v1

    div-double/2addr v1, v12

    iget-wide v3, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamd:D

    sub-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Lcom/can/tool/TrackData$DPonit;->sx:F

    .line 227
    iget-object v0, p0, Lcom/can/tool/TrackData$TrackParam;->mrPhyPoint:Lcom/can/tool/TrackData$DPonit;

    iget-wide v1, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamW:D

    div-double/2addr v1, v12

    iget-wide v3, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamd:D

    sub-double/2addr v1, v3

    double-to-float p0, v1

    iput p0, v0, Lcom/can/tool/TrackData$DPonit;->sx:F

    :goto_0
    return-void
.end method

.method public abs(D)D
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double p0, p1, v0

    if-gez p0, :cond_0

    neg-double p1, p1

    :cond_0
    return-wide p1
.end method

.method public put(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamalpha2:D

    const/4 v1, 0x1

    .line 136
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamalpha:D

    const/4 v2, 0x2

    .line 137
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamtheta:D

    const/4 v2, 0x3

    .line 138
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamL:D

    const/4 v2, 0x4

    .line 139
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamW:D

    const/4 v2, 0x5

    .line 140
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamD:D

    const/4 v2, 0x6

    .line 141
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamh:D

    const/4 v2, 0x7

    .line 142
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamd:D

    const/16 v2, 0x8

    .line 143
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v2

    iput v2, p0, Lcom/can/tool/TrackData$TrackParam;->miParamm:I

    const/16 v2, 0x9

    .line 144
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v2

    iput v2, p0, Lcom/can/tool/TrackData$TrackParam;->miParamn:I

    const/16 v2, 0xa

    .line 145
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v2

    iput v2, p0, Lcom/can/tool/TrackData$TrackParam;->miParamp:I

    const/16 v2, 0xb

    .line 146
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v2

    iput v2, p0, Lcom/can/tool/TrackData$TrackParam;->miParamq:I

    const/16 v2, 0xc

    .line 147
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->byteValue()B

    move-result p1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/can/tool/TrackData$TrackParam;->mbParamwideSpec:Z

    .line 150
    iget-wide v2, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamalpha2:D

    const-wide/16 v4, 0x0

    cmpl-double p1, v2, v4

    if-ltz p1, :cond_2

    iget-wide v6, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamalpha:D

    cmpl-double p1, v6, v4

    if-lez p1, :cond_2

    iget-wide v6, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamtheta:D

    cmpl-double p1, v6, v4

    if-lez p1, :cond_2

    iget-wide v6, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamL:D

    cmpl-double p1, v6, v4

    if-lez p1, :cond_2

    iget-wide v6, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamW:D

    cmpl-double p1, v6, v4

    if-lez p1, :cond_2

    iget-wide v6, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamD:D

    cmpl-double p1, v6, v4

    if-lez p1, :cond_2

    iget-wide v6, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamh:D

    cmpl-double p1, v6, v4

    if-lez p1, :cond_2

    iget p1, p0, Lcom/can/tool/TrackData$TrackParam;->miParamm:I

    if-lez p1, :cond_2

    iget p1, p0, Lcom/can/tool/TrackData$TrackParam;->miParamn:I

    if-lez p1, :cond_2

    iget p1, p0, Lcom/can/tool/TrackData$TrackParam;->miParamp:I

    if-lez p1, :cond_2

    iget p1, p0, Lcom/can/tool/TrackData$TrackParam;->miParamq:I

    if-lez p1, :cond_2

    const-wide/high16 v4, 0x405e000000000000L    # 120.0

    cmpl-double p1, v2, v4

    if-lez p1, :cond_1

    sub-double/2addr v2, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v6

    add-double/2addr v2, v4

    .line 155
    iput-wide v2, p0, Lcom/can/tool/TrackData$TrackParam;->mdParamalpha2:D

    :cond_1
    return v1

    :cond_2
    return v0
.end method
