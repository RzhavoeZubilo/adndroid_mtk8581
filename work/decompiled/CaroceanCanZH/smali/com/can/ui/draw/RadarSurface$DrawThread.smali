.class public Lcom/can/ui/draw/RadarSurface$DrawThread;
.super Ljava/lang/Thread;
.source "RadarSurface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/ui/draw/RadarSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DrawThread"
.end annotation


# instance fields
.field private mObjCanvas:Landroid/graphics/Canvas;

.field private mObjholder:Landroid/view/SurfaceHolder;

.field public mbDraw:Z

.field final synthetic this$0:Lcom/can/ui/draw/RadarSurface;


# direct methods
.method public constructor <init>(Lcom/can/ui/draw/RadarSurface;Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->this$0:Lcom/can/ui/draw/RadarSurface;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 245
    iput-boolean p1, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->mbDraw:Z

    const/4 p1, 0x0

    .line 246
    iput-object p1, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->mObjCanvas:Landroid/graphics/Canvas;

    .line 247
    iput-object p1, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->mObjholder:Landroid/view/SurfaceHolder;

    .line 251
    iput-object p2, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->mObjholder:Landroid/view/SurfaceHolder;

    return-void
.end method


# virtual methods
.method public Draw()V
    .locals 7

    .line 284
    iget-object v0, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->this$0:Lcom/can/ui/draw/RadarSurface;

    invoke-static {v0}, Lcom/can/ui/draw/RadarSurface;->access$100(Lcom/can/ui/draw/RadarSurface;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 286
    iget-object v0, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->this$0:Lcom/can/ui/draw/RadarSurface;

    invoke-static {v0}, Lcom/can/ui/draw/RadarSurface;->access$100(Lcom/can/ui/draw/RadarSurface;)I

    move-result v0

    const v1, 0x7f0b00c7

    if-ne v0, v1, :cond_1

    .line 287
    iget-object v0, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->mObjholder:Landroid/view/SurfaceHolder;

    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x21

    const/16 v3, 0x38

    const/16 v4, 0xe1

    const/16 v5, 0x1ab

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->mObjCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 294
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 295
    iget-object v0, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->mObjCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->this$0:Lcom/can/ui/draw/RadarSurface;

    .line 297
    invoke-virtual {v1}, Lcom/can/ui/draw/RadarSurface;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07011a

    .line 296
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const v2, 0x7f060104

    .line 297
    invoke-virtual {p0, v2}, Lcom/can/ui/draw/RadarSurface$DrawThread;->getResXY(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x7f060105

    invoke-virtual {p0, v3}, Lcom/can/ui/draw/RadarSurface$DrawThread;->getResXY(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->this$0:Lcom/can/ui/draw/RadarSurface;

    .line 298
    invoke-static {v4}, Lcom/can/ui/draw/RadarSurface;->access$000(Lcom/can/ui/draw/RadarSurface;)Landroid/graphics/Paint;

    move-result-object v4

    .line 296
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 300
    invoke-static {}, Lcom/can/ui/draw/RadarSurface;->access$200()Lcom/can/parser/DDef$RadarInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 302
    invoke-static {}, Lcom/can/ui/draw/RadarSurface;->access$200()Lcom/can/parser/DDef$RadarInfo;

    move-result-object v0

    iget-byte v0, v0, Lcom/can/parser/DDef$RadarInfo;->mFrontLeftDis:B

    sget-object v1, Lcom/can/ui/draw/ResDef;->mSmFLImage:[I

    const/high16 v2, 0x42300000    # 44.0f

    const/high16 v3, 0x428c0000    # 70.0f

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/can/ui/draw/RadarSurface$DrawThread;->doDraw2Surface(B[IFF)V

    .line 306
    invoke-static {}, Lcom/can/ui/draw/RadarSurface;->access$200()Lcom/can/parser/DDef$RadarInfo;

    move-result-object v0

    iget-byte v0, v0, Lcom/can/parser/DDef$RadarInfo;->mFrontLeftCenterDis:B

    sget-object v1, Lcom/can/ui/draw/ResDef;->mSmFLCImage:[I

    const/high16 v4, 0x42640000    # 57.0f

    const/high16 v5, 0x42000000    # 32.0f

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/can/ui/draw/RadarSurface$DrawThread;->doDraw2Surface(B[IFF)V

    .line 310
    invoke-static {}, Lcom/can/ui/draw/RadarSurface;->access$200()Lcom/can/parser/DDef$RadarInfo;

    move-result-object v0

    iget-byte v0, v0, Lcom/can/parser/DDef$RadarInfo;->mFrontRightCenterDis:B

    sget-object v1, Lcom/can/ui/draw/ResDef;->mSmFRCImage:[I

    const/high16 v6, 0x42be0000    # 95.0f

    invoke-virtual {p0, v0, v1, v6, v5}, Lcom/can/ui/draw/RadarSurface$DrawThread;->doDraw2Surface(B[IFF)V

    .line 314
    invoke-static {}, Lcom/can/ui/draw/RadarSurface;->access$200()Lcom/can/parser/DDef$RadarInfo;

    move-result-object v0

    iget-byte v0, v0, Lcom/can/parser/DDef$RadarInfo;->mFrontRightDis:B

    sget-object v1, Lcom/can/ui/draw/ResDef;->mSmFRImage:[I

    const/high16 v5, 0x42d60000    # 107.0f

    invoke-virtual {p0, v0, v1, v5, v3}, Lcom/can/ui/draw/RadarSurface$DrawThread;->doDraw2Surface(B[IFF)V

    .line 318
    invoke-static {}, Lcom/can/ui/draw/RadarSurface;->access$200()Lcom/can/parser/DDef$RadarInfo;

    move-result-object v0

    iget-byte v0, v0, Lcom/can/parser/DDef$RadarInfo;->mBackLeftDis:B

    sget-object v1, Lcom/can/ui/draw/ResDef;->mSmBLImage:[I

    const/high16 v3, 0x435a0000    # 218.0f

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/can/ui/draw/RadarSurface$DrawThread;->doDraw2Surface(B[IFF)V

    .line 322
    invoke-static {}, Lcom/can/ui/draw/RadarSurface;->access$200()Lcom/can/parser/DDef$RadarInfo;

    move-result-object v0

    iget-byte v0, v0, Lcom/can/parser/DDef$RadarInfo;->mBackLeftCenterDis:B

    sget-object v1, Lcom/can/ui/draw/ResDef;->mSmBLCImage:[I

    const/high16 v2, 0x43620000    # 226.0f

    invoke-virtual {p0, v0, v1, v4, v2}, Lcom/can/ui/draw/RadarSurface$DrawThread;->doDraw2Surface(B[IFF)V

    .line 326
    invoke-static {}, Lcom/can/ui/draw/RadarSurface;->access$200()Lcom/can/parser/DDef$RadarInfo;

    move-result-object v0

    iget-byte v0, v0, Lcom/can/parser/DDef$RadarInfo;->mBackRightCenterDis:B

    sget-object v1, Lcom/can/ui/draw/ResDef;->mSmBRCImage:[I

    invoke-virtual {p0, v0, v1, v6, v2}, Lcom/can/ui/draw/RadarSurface$DrawThread;->doDraw2Surface(B[IFF)V

    .line 330
    invoke-static {}, Lcom/can/ui/draw/RadarSurface;->access$200()Lcom/can/parser/DDef$RadarInfo;

    move-result-object v0

    iget-byte v0, v0, Lcom/can/parser/DDef$RadarInfo;->mBackRightDis:B

    sget-object v1, Lcom/can/ui/draw/ResDef;->mSmBRImage:[I

    const/high16 v2, 0x43590000    # 217.0f

    invoke-virtual {p0, v0, v1, v5, v2}, Lcom/can/ui/draw/RadarSurface$DrawThread;->doDraw2Surface(B[IFF)V

    .line 334
    invoke-static {}, Lcom/can/ui/draw/RadarSurface;->access$200()Lcom/can/parser/DDef$RadarInfo;

    move-result-object v0

    iget-byte v0, v0, Lcom/can/parser/DDef$RadarInfo;->mLeftUpDis:B

    sget-object v1, Lcom/can/ui/draw/ResDef;->mSmLUImage:[I

    const/high16 v2, 0x41f00000    # 30.0f

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/can/ui/draw/RadarSurface$DrawThread;->doDraw2Surface(B[IFF)V

    .line 338
    invoke-static {}, Lcom/can/ui/draw/RadarSurface;->access$200()Lcom/can/parser/DDef$RadarInfo;

    move-result-object v0

    iget-byte v0, v0, Lcom/can/parser/DDef$RadarInfo;->mLeftUpCenterDis:B

    sget-object v1, Lcom/can/ui/draw/ResDef;->mSmLUCImage:[I

    const/high16 v2, 0x43030000    # 131.0f

    const/high16 v3, 0x41e00000    # 28.0f

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/can/ui/draw/RadarSurface$DrawThread;->doDraw2Surface(B[IFF)V

    .line 342
    invoke-static {}, Lcom/can/ui/draw/RadarSurface;->access$200()Lcom/can/parser/DDef$RadarInfo;

    move-result-object v0

    iget-byte v0, v0, Lcom/can/parser/DDef$RadarInfo;->mLeftDnCenterDis:B

    sget-object v1, Lcom/can/ui/draw/ResDef;->mSmLDCImage:[I

    const/high16 v2, 0x432b0000    # 171.0f

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/can/ui/draw/RadarSurface$DrawThread;->doDraw2Surface(B[IFF)V

    .line 346
    invoke-static {}, Lcom/can/ui/draw/RadarSurface;->access$200()Lcom/can/parser/DDef$RadarInfo;

    move-result-object v0

    iget-byte v0, v0, Lcom/can/parser/DDef$RadarInfo;->mLeftDnDis:B

    sget-object v1, Lcom/can/ui/draw/ResDef;->mSmLDImage:[I

    const/high16 v3, 0x41e80000    # 29.0f

    const/high16 v4, 0x43400000    # 192.0f

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/can/ui/draw/RadarSurface$DrawThread;->doDraw2Surface(B[IFF)V

    .line 350
    invoke-static {}, Lcom/can/ui/draw/RadarSurface;->access$200()Lcom/can/parser/DDef$RadarInfo;

    move-result-object v0

    iget-byte v0, v0, Lcom/can/parser/DDef$RadarInfo;->mRightUpDis:B

    sget-object v1, Lcom/can/ui/draw/ResDef;->mSmRUImage:[I

    const/high16 v3, 0x42b20000    # 89.0f

    const/high16 v4, 0x42ec0000    # 118.0f

    invoke-virtual {p0, v0, v1, v4, v3}, Lcom/can/ui/draw/RadarSurface$DrawThread;->doDraw2Surface(B[IFF)V

    .line 354
    invoke-static {}, Lcom/can/ui/draw/RadarSurface;->access$200()Lcom/can/parser/DDef$RadarInfo;

    move-result-object v0

    iget-byte v0, v0, Lcom/can/parser/DDef$RadarInfo;->mRightUpCenterDis:B

    sget-object v1, Lcom/can/ui/draw/ResDef;->mSmRUCImage:[I

    const/high16 v3, 0x43020000    # 130.0f

    const/high16 v5, 0x42f80000    # 124.0f

    invoke-virtual {p0, v0, v1, v5, v3}, Lcom/can/ui/draw/RadarSurface$DrawThread;->doDraw2Surface(B[IFF)V

    .line 358
    invoke-static {}, Lcom/can/ui/draw/RadarSurface;->access$200()Lcom/can/parser/DDef$RadarInfo;

    move-result-object v0

    iget-byte v0, v0, Lcom/can/parser/DDef$RadarInfo;->mRightDnCenterDis:B

    sget-object v1, Lcom/can/ui/draw/ResDef;->mSmRDCImage:[I

    invoke-virtual {p0, v0, v1, v5, v2}, Lcom/can/ui/draw/RadarSurface$DrawThread;->doDraw2Surface(B[IFF)V

    .line 362
    invoke-static {}, Lcom/can/ui/draw/RadarSurface;->access$200()Lcom/can/parser/DDef$RadarInfo;

    move-result-object v0

    iget-byte v0, v0, Lcom/can/parser/DDef$RadarInfo;->mRightDnDis:B

    sget-object v1, Lcom/can/ui/draw/ResDef;->mSmRDImage:[I

    const/high16 v2, 0x433f0000    # 191.0f

    invoke-virtual {p0, v0, v1, v4, v2}, Lcom/can/ui/draw/RadarSurface$DrawThread;->doDraw2Surface(B[IFF)V

    goto/16 :goto_0

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->this$0:Lcom/can/ui/draw/RadarSurface;

    invoke-static {v0}, Lcom/can/ui/draw/RadarSurface;->access$100(Lcom/can/ui/draw/RadarSurface;)I

    move-result v0

    const v1, 0x7f0b0027

    if-ne v0, v1, :cond_3

    .line 367
    iget-object v0, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->mObjholder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->mObjCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/high16 v1, -0x1000000

    .line 372
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 373
    iget-object v0, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->mObjCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->this$0:Lcom/can/ui/draw/RadarSurface;

    .line 374
    invoke-virtual {v1}, Lcom/can/ui/draw/RadarSurface;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07052b

    .line 373
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->this$0:Lcom/can/ui/draw/RadarSurface;

    .line 374
    invoke-static {v2}, Lcom/can/ui/draw/RadarSurface;->access$000(Lcom/can/ui/draw/RadarSurface;)Landroid/graphics/Paint;

    move-result-object v2

    const/4 v3, 0x0

    .line 373
    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 376
    invoke-static {}, Lcom/can/ui/draw/RadarSurface;->access$200()Lcom/can/parser/DDef$RadarInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 378
    invoke-static {}, Lcom/can/ui/draw/RadarSurface;->access$200()Lcom/can/parser/DDef$RadarInfo;

    move-result-object v0

    iget-byte v0, v0, Lcom/can/parser/DDef$RadarInfo;->mFrontLeftDis:B

    sget-object v1, Lcom/can/ui/draw/ResDef;->mBgFLImage:[I

    const v2, 0x7f060065

    .line 379
    invoke-virtual {p0, v2}, Lcom/can/ui/draw/RadarSurface$DrawThread;->getResXY(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x7f060066

    .line 380
    invoke-virtual {p0, v3}, Lcom/can/ui/draw/RadarSurface$DrawThread;->getResXY(I)I

    move-result v3

    int-to-float v3, v3

    .line 378
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/can/ui/draw/RadarSurface$DrawThread;->doDraw2Surface(B[IFF)V

    .line 383
    invoke-static {}, Lcom/can/ui/draw/RadarSurface;->access$200()Lcom/can/parser/DDef$RadarInfo;

    move-result-object v0

    iget-byte v0, v0, Lcom/can/parser/DDef$RadarInfo;->mFrontLeftCenterDis:B

    sget-object v1, Lcom/can/ui/draw/ResDef;->mBgFLCImage:[I

    const v2, 0x7f060067

    .line 385
    invoke-virtual {p0, v2}, Lcom/can/ui/draw/RadarSurface$DrawThread;->getResXY(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x7f060068

    .line 386
    invoke-virtual {p0, v3}, Lcom/can/ui/draw/RadarSurface$DrawThread;->getResXY(I)I

    move-result v3

    int-to-float v3, v3

    .line 383
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/can/ui/draw/RadarSurface$DrawThread;->doDraw2Surface(B[IFF)V

    .line 389
    invoke-static {}, Lcom/can/ui/draw/RadarSurface;->access$200()Lcom/can/parser/DDef$RadarInfo;

    move-result-object v0

    iget-byte v0, v0, Lcom/can/parser/DDef$RadarInfo;->mFrontRightCenterDis:B

    sget-object v1, Lcom/can/ui/draw/ResDef;->mBgFRCImage:[I

    const v2, 0x7f06006b

    .line 391
    invoke-virtual {p0, v2}, Lcom/can/ui/draw/RadarSurface$DrawThread;->getResXY(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x7f06006c

    .line 392
    invoke-virtual {p0, v3}, Lcom/can/ui/draw/RadarSurface$DrawThread;->getResXY(I)I

    move-result v3

    int-to-float v3, v3

    .line 389
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/can/ui/draw/RadarSurface$DrawThread;->doDraw2Surface(B[IFF)V

    .line 395
    invoke-static {}, Lcom/can/ui/draw/RadarSurface;->access$200()Lcom/can/parser/DDef$RadarInfo;

    move-result-object v0

    iget-byte v0, v0, Lcom/can/parser/DDef$RadarInfo;->mFrontRightDis:B

    sget-object v1, Lcom/can/ui/draw/ResDef;->mBgFRImage:[I

    const v2, 0x7f060069

    .line 397
    invoke-virtual {p0, v2}, Lcom/can/ui/draw/RadarSurface$DrawThread;->getResXY(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x7f06006a

    .line 398
    invoke-virtual {p0, v3}, Lcom/can/ui/draw/RadarSurface$DrawThread;->getResXY(I)I

    move-result v3

    int-to-float v3, v3

    .line 395
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/can/ui/draw/RadarSurface$DrawThread;->doDraw2Surface(B[IFF)V

    .line 401
    invoke-static {}, Lcom/can/ui/draw/RadarSurface;->access$200()Lcom/can/parser/DDef$RadarInfo;

    move-result-object v0

    iget-byte v0, v0, Lcom/can/parser/DDef$RadarInfo;->mBackLeftDis:B

    sget-object v1, Lcom/can/ui/draw/ResDef;->mBgBLImage:[I

    const v2, 0x7f060055

    .line 402
    invoke-virtual {p0, v2}, Lcom/can/ui/draw/RadarSurface$DrawThread;->getResXY(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x7f060056

    .line 403
    invoke-virtual {p0, v3}, Lcom/can/ui/draw/RadarSurface$DrawThread;->getResXY(I)I

    move-result v3

    int-to-float v3, v3

    .line 401
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/can/ui/draw/RadarSurface$DrawThread;->doDraw2Surface(B[IFF)V

    .line 406
    invoke-static {}, Lcom/can/ui/draw/RadarSurface;->access$200()Lcom/can/parser/DDef$RadarInfo;

    move-result-object v0

    iget-byte v0, v0, Lcom/can/parser/DDef$RadarInfo;->mBackLeftCenterDis:B

    sget-object v1, Lcom/can/ui/draw/ResDef;->mBgBLCImage:[I

    const v2, 0x7f060057

    .line 408
    invoke-virtual {p0, v2}, Lcom/can/ui/draw/RadarSurface$DrawThread;->getResXY(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x7f060058

    .line 409
    invoke-virtual {p0, v3}, Lcom/can/ui/draw/RadarSurface$DrawThread;->getResXY(I)I

    move-result v3

    int-to-float v3, v3

    .line 406
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/can/ui/draw/RadarSurface$DrawThread;->doDraw2Surface(B[IFF)V

    .line 412
    invoke-static {}, Lcom/can/ui/draw/RadarSurface;->access$200()Lcom/can/parser/DDef$RadarInfo;

    move-result-object v0

    iget-byte v0, v0, Lcom/can/parser/DDef$RadarInfo;->mBackRightCenterDis:B

    sget-object v1, Lcom/can/ui/draw/ResDef;->mBgBRCImage:[I

    const v2, 0x7f06005b

    .line 414
    invoke-virtual {p0, v2}, Lcom/can/ui/draw/RadarSurface$DrawThread;->getResXY(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x7f06005c

    .line 415
    invoke-virtual {p0, v3}, Lcom/can/ui/draw/RadarSurface$DrawThread;->getResXY(I)I

    move-result v3

    int-to-float v3, v3

    .line 412
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/can/ui/draw/RadarSurface$DrawThread;->doDraw2Surface(B[IFF)V

    .line 418
    invoke-static {}, Lcom/can/ui/draw/RadarSurface;->access$200()Lcom/can/parser/DDef$RadarInfo;

    move-result-object v0

    iget-byte v0, v0, Lcom/can/parser/DDef$RadarInfo;->mBackRightDis:B

    sget-object v1, Lcom/can/ui/draw/ResDef;->mBgBRImage:[I

    const v2, 0x7f060059

    .line 419
    invoke-virtual {p0, v2}, Lcom/can/ui/draw/RadarSurface$DrawThread;->getResXY(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x7f06005a

    .line 420
    invoke-virtual {p0, v3}, Lcom/can/ui/draw/RadarSurface$DrawThread;->getResXY(I)I

    move-result v3

    int-to-float v3, v3

    .line 418
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/can/ui/draw/RadarSurface$DrawThread;->doDraw2Surface(B[IFF)V

    :cond_3
    :goto_0
    return-void
.end method

.method public doDraw2Surface(B[IFF)V
    .locals 2

    const/4 v0, 0x0

    .line 256
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    if-ltz p1, :cond_2

    .line 257
    array-length v1, p2

    if-gt p1, v1, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 258
    aget v0, p2, p1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 260
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_2

    .line 261
    iget-object p2, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->this$0:Lcom/can/ui/draw/RadarSurface;

    invoke-virtual {p2, p1}, Lcom/can/ui/draw/RadarSurface;->getBitmap2Cache(Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_1

    .line 263
    iget-object p2, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->this$0:Lcom/can/ui/draw/RadarSurface;

    invoke-virtual {p2}, Lcom/can/ui/draw/RadarSurface;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 264
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 263
    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 267
    iget-object v0, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->this$0:Lcom/can/ui/draw/RadarSurface;

    invoke-virtual {v0, p1, p2}, Lcom/can/ui/draw/RadarSurface;->addBitmap2Cache(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 272
    iget-object p1, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->mObjCanvas:Landroid/graphics/Canvas;

    iget-object p0, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->this$0:Lcom/can/ui/draw/RadarSurface;

    invoke-static {p0}, Lcom/can/ui/draw/RadarSurface;->access$000(Lcom/can/ui/draw/RadarSurface;)Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public firstDraw()V
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->mObjholder:Landroid/view/SurfaceHolder;

    monitor-enter v0

    .line 474
    :try_start_0
    invoke-virtual {p0}, Lcom/can/ui/draw/RadarSurface$DrawThread;->Draw()V

    .line 475
    iget-object v1, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->mObjCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_0

    .line 476
    iget-object p0, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->mObjholder:Landroid/view/SurfaceHolder;

    invoke-interface {p0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 478
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getResXY(I)I
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->this$0:Lcom/can/ui/draw/RadarSurface;

    invoke-virtual {p0}, Lcom/can/ui/draw/RadarSurface;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public run()V
    .locals 2

    .line 483
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->mbDraw:Z

    if-eqz v0, :cond_2

    .line 486
    :try_start_0
    iget-object v0, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->mObjholder:Landroid/view/SurfaceHolder;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 487
    :try_start_1
    invoke-virtual {p0}, Lcom/can/ui/draw/RadarSurface$DrawThread;->Draw()V

    .line 488
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v0, 0x32

    .line 490
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 496
    iget-object v0, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->mObjCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 488
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 493
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 496
    iget-object v0, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->mObjCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 498
    :goto_1
    iget-object v1, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->mObjholder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 496
    :goto_2
    iget-object v1, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->mObjCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_1

    .line 498
    iget-object p0, p0, Lcom/can/ui/draw/RadarSurface$DrawThread;->mObjholder:Landroid/view/SurfaceHolder;

    invoke-interface {p0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 500
    :cond_1
    throw v0

    :cond_2
    return-void
.end method
