.class public Lcom/can/ui/draw/HeaderLayout;
.super Landroid/widget/LinearLayout;
.source "HeaderLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/can/ui/draw/HeaderLayout$onProgressChanged;,
        Lcom/can/ui/draw/HeaderLayout$onTwoRadioButtonListener;,
        Lcom/can/ui/draw/HeaderLayout$onOneButtonListener;,
        Lcom/can/ui/draw/HeaderLayout$onOneCheckBoxListener;,
        Lcom/can/ui/draw/HeaderLayout$onTwoButtonListener;
    }
.end annotation


# instance fields
.field private final STYLE_BT_CHECK:I

.field private final STYLE_LEFT_RIGHT_BUTTON:I

.field private final STYLE_ONLY_CHECKBOX:I

.field private final STYLE_ONLY_ONE_BUTTON:I

.field private final STYLE_ONLY_TITLE:I

.field private final STYLE_SEEKBAR:I

.field private final STYLE_TWO_RADIOBUTTON:I

.field private item_Drawable:Landroid/graphics/drawable/Drawable;

.field private item_bt_check_btTitle:Ljava/lang/String;

.field private item_hintTitle:Ljava/lang/String;

.field private item_seekbarMax:I

.field private item_seekbarPos:I

.field private item_subTitle:Ljava/lang/String;

.field private item_two_button_left:Ljava/lang/String;

.field private item_two_button_right:Ljava/lang/String;

.field private item_two_radioButton:Landroid/widget/RadioGroup;

.field private mBtCheck_bt:Landroid/widget/Button;

.field private mBtCheck_ck:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mEnable:Z

.field private mHeader:Landroid/view/View;

.field private mHintTitle:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutRightContainer:Landroid/widget/LinearLayout;

.field private mLeftButton:Landroid/widget/Button;

.field private mMiddleText:Landroid/widget/TextView;

.field private mOnProgressChange:Lcom/can/ui/draw/HeaderLayout$onProgressChanged;

.field private mOneButtonListener:Lcom/can/ui/draw/HeaderLayout$onOneButtonListener;

.field private mOneCheckBox:Landroid/widget/CheckBox;

.field private mOneCheckListener:Lcom/can/ui/draw/HeaderLayout$onOneCheckBoxListener;

.field private mOnlyOneButton:Landroid/widget/Button;

.field private mPrompt_title:Landroid/widget/TextView;

.field private mPrompt_title2:Landroid/widget/TextView;

.field private mRadioButton1:Landroid/widget/RadioButton;

.field private mRadioButton2:Landroid/widget/RadioButton;

.field private mRightButton:Landroid/widget/Button;

.field private mRightTextTitle:Landroid/widget/TextView;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekbarTitle:Landroid/widget/TextView;

.field private mSubTitle:Landroid/widget/TextView;

.field private mTwoButtonListener:Lcom/can/ui/draw/HeaderLayout$onTwoButtonListener;

.field private mTwoRadioListener:Lcom/can/ui/draw/HeaderLayout$onTwoRadioButtonListener;

.field private mView:Landroid/view/View;

.field private style_id:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 89
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/can/ui/draw/HeaderLayout;->mEnable:Z

    .line 43
    iput v0, p0, Lcom/can/ui/draw/HeaderLayout;->style_id:I

    const/16 v1, 0x64

    .line 69
    iput v1, p0, Lcom/can/ui/draw/HeaderLayout;->item_seekbarMax:I

    const/16 v1, 0x32

    iput v1, p0, Lcom/can/ui/draw/HeaderLayout;->item_seekbarPos:I

    const/4 v1, 0x0

    .line 75
    iput v1, p0, Lcom/can/ui/draw/HeaderLayout;->STYLE_ONLY_TITLE:I

    .line 76
    iput v0, p0, Lcom/can/ui/draw/HeaderLayout;->STYLE_LEFT_RIGHT_BUTTON:I

    const/4 v0, 0x2

    .line 77
    iput v0, p0, Lcom/can/ui/draw/HeaderLayout;->STYLE_ONLY_CHECKBOX:I

    const/4 v0, 0x3

    .line 78
    iput v0, p0, Lcom/can/ui/draw/HeaderLayout;->STYLE_ONLY_ONE_BUTTON:I

    const/4 v0, 0x4

    .line 79
    iput v0, p0, Lcom/can/ui/draw/HeaderLayout;->STYLE_TWO_RADIOBUTTON:I

    const/4 v0, 0x5

    .line 80
    iput v0, p0, Lcom/can/ui/draw/HeaderLayout;->STYLE_BT_CHECK:I

    const/4 v0, 0x6

    .line 81
    iput v0, p0, Lcom/can/ui/draw/HeaderLayout;->STYLE_SEEKBAR:I

    .line 90
    iput-object p1, p0, Lcom/can/ui/draw/HeaderLayout;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {p0, p1}, Lcom/can/ui/draw/HeaderLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/can/ui/draw/HeaderLayout;->mEnable:Z

    .line 43
    iput v0, p0, Lcom/can/ui/draw/HeaderLayout;->style_id:I

    const/16 v1, 0x64

    .line 69
    iput v1, p0, Lcom/can/ui/draw/HeaderLayout;->item_seekbarMax:I

    const/16 v2, 0x32

    iput v2, p0, Lcom/can/ui/draw/HeaderLayout;->item_seekbarPos:I

    const/4 v3, 0x0

    .line 75
    iput v3, p0, Lcom/can/ui/draw/HeaderLayout;->STYLE_ONLY_TITLE:I

    .line 76
    iput v0, p0, Lcom/can/ui/draw/HeaderLayout;->STYLE_LEFT_RIGHT_BUTTON:I

    const/4 v4, 0x2

    .line 77
    iput v4, p0, Lcom/can/ui/draw/HeaderLayout;->STYLE_ONLY_CHECKBOX:I

    const/4 v5, 0x3

    .line 78
    iput v5, p0, Lcom/can/ui/draw/HeaderLayout;->STYLE_ONLY_ONE_BUTTON:I

    const/4 v6, 0x4

    .line 79
    iput v6, p0, Lcom/can/ui/draw/HeaderLayout;->STYLE_TWO_RADIOBUTTON:I

    const/4 v7, 0x5

    .line 80
    iput v7, p0, Lcom/can/ui/draw/HeaderLayout;->STYLE_BT_CHECK:I

    const/4 v8, 0x6

    .line 81
    iput v8, p0, Lcom/can/ui/draw/HeaderLayout;->STYLE_SEEKBAR:I

    .line 97
    sget-object v9, Lcom/can/activity/R$styleable;->HeaderLayout:[I

    invoke-virtual {p1, p2, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 99
    invoke-virtual {p2, v7, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/can/ui/draw/HeaderLayout;->style_id:I

    .line 100
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/can/ui/draw/HeaderLayout;->item_Drawable:Landroid/graphics/drawable/Drawable;

    .line 101
    invoke-virtual {p2, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/can/ui/draw/HeaderLayout;->item_subTitle:Ljava/lang/String;

    .line 102
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->item_hintTitle:Ljava/lang/String;

    .line 104
    iget v0, p0, Lcom/can/ui/draw/HeaderLayout;->style_id:I

    if-ne v0, v6, :cond_0

    const/4 v0, 0x7

    .line 105
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->item_two_button_left:Ljava/lang/String;

    const/16 v0, 0x8

    .line 106
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->item_two_button_right:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-ne v0, v7, :cond_1

    .line 108
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->item_bt_check_btTitle:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-ne v0, v8, :cond_2

    .line 110
    invoke-virtual {p2, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/can/ui/draw/HeaderLayout;->item_seekbarMax:I

    .line 111
    invoke-virtual {p2, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/can/ui/draw/HeaderLayout;->item_seekbarPos:I

    .line 114
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    invoke-virtual {p0, p1}, Lcom/can/ui/draw/HeaderLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/can/ui/draw/HeaderLayout;)Lcom/can/ui/draw/HeaderLayout$onOneButtonListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout;->mOneButtonListener:Lcom/can/ui/draw/HeaderLayout$onOneButtonListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/can/ui/draw/HeaderLayout;)Landroid/view/View;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/can/ui/draw/HeaderLayout;)Lcom/can/ui/draw/HeaderLayout$onTwoButtonListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout;->mTwoButtonListener:Lcom/can/ui/draw/HeaderLayout$onTwoButtonListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/can/ui/draw/HeaderLayout;)Lcom/can/ui/draw/HeaderLayout$onOneCheckBoxListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout;->mOneCheckListener:Lcom/can/ui/draw/HeaderLayout$onOneCheckBoxListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/can/ui/draw/HeaderLayout;)Landroid/widget/RadioGroup;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout;->item_two_radioButton:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method static synthetic access$500(Lcom/can/ui/draw/HeaderLayout;)Lcom/can/ui/draw/HeaderLayout$onTwoRadioButtonListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout;->mTwoRadioListener:Lcom/can/ui/draw/HeaderLayout$onTwoRadioButtonListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/can/ui/draw/HeaderLayout;)Lcom/can/ui/draw/HeaderLayout$onProgressChanged;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout;->mOnProgressChange:Lcom/can/ui/draw/HeaderLayout$onProgressChanged;

    return-object p0
.end method

.method private defaultTitle()V
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout;->mLayoutRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method


# virtual methods
.method public findViewByHeaderId(I)Landroid/view/View;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout;->mHeader:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getHintTitle()Landroid/widget/TextView;
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout;->mHintTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method getInstance()Lcom/can/ui/draw/HeaderLayout;
    .locals 1

    .line 84
    new-instance v0, Lcom/can/ui/draw/HeaderLayout;

    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/can/ui/draw/HeaderLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getMiddleTitle()Landroid/widget/TextView;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout;->mMiddleText:Landroid/widget/TextView;

    return-object p0
.end method

.method public getOneCheckBox()Landroid/widget/CheckBox;
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout;->mOneCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public getSeekbarMax()I
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result p0

    return p0

    .line 520
    :cond_0
    iget p0, p0, Lcom/can/ui/draw/HeaderLayout;->item_seekbarMax:I

    return p0
.end method

.method public init(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 201
    :pswitch_0
    invoke-direct {p0}, Lcom/can/ui/draw/HeaderLayout;->defaultTitle()V

    .line 202
    invoke-virtual {p0}, Lcom/can/ui/draw/HeaderLayout;->initSeekBarLayout()V

    goto :goto_0

    .line 197
    :pswitch_1
    invoke-direct {p0}, Lcom/can/ui/draw/HeaderLayout;->defaultTitle()V

    .line 198
    invoke-virtual {p0}, Lcom/can/ui/draw/HeaderLayout;->initBtCheckLayout()V

    goto :goto_0

    .line 192
    :pswitch_2
    invoke-direct {p0}, Lcom/can/ui/draw/HeaderLayout;->defaultTitle()V

    .line 193
    invoke-virtual {p0}, Lcom/can/ui/draw/HeaderLayout;->titleTwoRadioButton()V

    goto :goto_0

    .line 188
    :pswitch_3
    invoke-direct {p0}, Lcom/can/ui/draw/HeaderLayout;->defaultTitle()V

    .line 189
    invoke-virtual {p0}, Lcom/can/ui/draw/HeaderLayout;->initOnlyOneButton()V

    goto :goto_0

    .line 184
    :pswitch_4
    invoke-direct {p0}, Lcom/can/ui/draw/HeaderLayout;->defaultTitle()V

    .line 185
    invoke-virtual {p0}, Lcom/can/ui/draw/HeaderLayout;->initOnlyCheckBox()V

    goto :goto_0

    .line 180
    :pswitch_5
    invoke-direct {p0}, Lcom/can/ui/draw/HeaderLayout;->defaultTitle()V

    .line 181
    invoke-virtual {p0}, Lcom/can/ui/draw/HeaderLayout;->initLeftRightButton()V

    goto :goto_0

    .line 175
    :pswitch_6
    invoke-direct {p0}, Lcom/can/ui/draw/HeaderLayout;->defaultTitle()V

    .line 176
    invoke-virtual {p0}, Lcom/can/ui/draw/HeaderLayout;->initOnlyRightText()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 132
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/can/ui/draw/HeaderLayout;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0b007e

    const/4 v1, 0x0

    .line 133
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/can/ui/draw/HeaderLayout;->mHeader:Landroid/view/View;

    .line 134
    invoke-virtual {p0, p1}, Lcom/can/ui/draw/HeaderLayout;->addView(Landroid/view/View;)V

    .line 135
    iget-object p1, p0, Lcom/can/ui/draw/HeaderLayout;->mHeader:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/can/ui/draw/HeaderLayout;->mView:Landroid/view/View;

    .line 136
    invoke-virtual {p0}, Lcom/can/ui/draw/HeaderLayout;->initViews()V

    .line 137
    iget p1, p0, Lcom/can/ui/draw/HeaderLayout;->style_id:I

    invoke-virtual {p0, p1}, Lcom/can/ui/draw/HeaderLayout;->init(I)V

    return-void
.end method

.method public initBtCheckLayout()V
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b0079

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/can/ui/draw/HeaderLayout;->mLayoutRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v1, 0x7f0804b9

    .line 310
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/can/ui/draw/HeaderLayout;->mBtCheck_ck:Landroid/widget/CheckBox;

    const v1, 0x7f0804b8

    .line 311
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mBtCheck_bt:Landroid/widget/Button;

    .line 313
    iget-object v1, p0, Lcom/can/ui/draw/HeaderLayout;->item_bt_check_btTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 314
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mBtCheck_ck:Landroid/widget/CheckBox;

    new-instance v1, Lcom/can/ui/draw/HeaderLayout$4;

    invoke-direct {v1, p0}, Lcom/can/ui/draw/HeaderLayout$4;-><init>(Lcom/can/ui/draw/HeaderLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mBtCheck_bt:Landroid/widget/Button;

    new-instance v1, Lcom/can/ui/draw/HeaderLayout$5;

    invoke-direct {v1, p0}, Lcom/can/ui/draw/HeaderLayout$5;-><init>(Lcom/can/ui/draw/HeaderLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initLeftRightButton()V
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b007a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/can/ui/draw/HeaderLayout;->mLayoutRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v1, 0x7f0804be

    .line 259
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/can/ui/draw/HeaderLayout;->mLeftButton:Landroid/widget/Button;

    const v1, 0x7f0804bf

    .line 260
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/can/ui/draw/HeaderLayout;->mRightButton:Landroid/widget/Button;

    const v1, 0x7f0804c6

    .line 261
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mMiddleText:Landroid/widget/TextView;

    .line 262
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mLeftButton:Landroid/widget/Button;

    new-instance v1, Lcom/can/ui/draw/HeaderLayout$2;

    invoke-direct {v1, p0}, Lcom/can/ui/draw/HeaderLayout$2;-><init>(Lcom/can/ui/draw/HeaderLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 272
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mRightButton:Landroid/widget/Button;

    new-instance v1, Lcom/can/ui/draw/HeaderLayout$3;

    invoke-direct {v1, p0}, Lcom/can/ui/draw/HeaderLayout$3;-><init>(Lcom/can/ui/draw/HeaderLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public initOnlyCheckBox()V
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b007b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lcom/can/ui/draw/HeaderLayout;->mLayoutRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v1, 0x7f080607

    .line 331
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mOneCheckBox:Landroid/widget/CheckBox;

    .line 332
    new-instance v1, Lcom/can/ui/draw/HeaderLayout$6;

    invoke-direct {v1, p0}, Lcom/can/ui/draw/HeaderLayout$6;-><init>(Lcom/can/ui/draw/HeaderLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initOnlyOneButton()V
    .locals 3

    .line 387
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b007c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 388
    iget-object v1, p0, Lcom/can/ui/draw/HeaderLayout;->mLayoutRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v1, 0x7f080608

    .line 389
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/can/ui/draw/HeaderLayout;->mOnlyOneButton:Landroid/widget/Button;

    const v1, 0x7f0804c1

    .line 390
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/can/ui/draw/HeaderLayout;->mPrompt_title:Landroid/widget/TextView;

    const v1, 0x7f0804c2

    .line 391
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mPrompt_title2:Landroid/widget/TextView;

    .line 392
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mOnlyOneButton:Landroid/widget/Button;

    new-instance v1, Lcom/can/ui/draw/HeaderLayout$7;

    invoke-direct {v1, p0}, Lcom/can/ui/draw/HeaderLayout$7;-><init>(Lcom/can/ui/draw/HeaderLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public initOnlyRightText()V
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b007d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/can/ui/draw/HeaderLayout;->mLayoutRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v1, 0x7f080609

    .line 253
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mRightTextTitle:Landroid/widget/TextView;

    return-void
.end method

.method public initSeekBarLayout()V
    .locals 3

    .line 479
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b007f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 480
    iget-object v1, p0, Lcom/can/ui/draw/HeaderLayout;->mLayoutRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v1, 0x7f0804c4

    .line 481
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/can/ui/draw/HeaderLayout;->mSeekbarTitle:Landroid/widget/TextView;

    const v1, 0x7f0804c3

    .line 482
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mSeekBar:Landroid/widget/SeekBar;

    .line 483
    iget v1, p0, Lcom/can/ui/draw/HeaderLayout;->item_seekbarMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 484
    iget v0, p0, Lcom/can/ui/draw/HeaderLayout;->item_seekbarPos:I

    invoke-virtual {p0, v0}, Lcom/can/ui/draw/HeaderLayout;->setSeekbarPos(I)V

    .line 485
    iget v0, p0, Lcom/can/ui/draw/HeaderLayout;->item_seekbarPos:I

    invoke-virtual {p0, v0}, Lcom/can/ui/draw/HeaderLayout;->setSeekbarText(I)V

    .line 486
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/can/ui/draw/HeaderLayout$9;

    invoke-direct {v1, p0}, Lcom/can/ui/draw/HeaderLayout$9;-><init>(Lcom/can/ui/draw/HeaderLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public initViews()V
    .locals 2

    const v0, 0x7f0804c0

    .line 141
    invoke-virtual {p0, v0}, Lcom/can/ui/draw/HeaderLayout;->findViewByHeaderId(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mLayoutRightContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0804bd

    .line 142
    invoke-virtual {p0, v0}, Lcom/can/ui/draw/HeaderLayout;->findViewByHeaderId(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f0804c5

    .line 143
    invoke-virtual {p0, v0}, Lcom/can/ui/draw/HeaderLayout;->findViewByHeaderId(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mSubTitle:Landroid/widget/TextView;

    const v0, 0x7f0804bc

    .line 144
    invoke-virtual {p0, v0}, Lcom/can/ui/draw/HeaderLayout;->findViewByHeaderId(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mHintTitle:Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->item_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/can/ui/draw/HeaderLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->item_subTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/can/ui/draw/HeaderLayout;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->item_hintTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/can/ui/draw/HeaderLayout;->setHintTitle(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mHeader:Landroid/view/View;

    new-instance v1, Lcom/can/ui/draw/HeaderLayout$1;

    invoke-direct {v1, p0}, Lcom/can/ui/draw/HeaderLayout$1;-><init>(Lcom/can/ui/draw/HeaderLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 122
    iput-boolean p1, p0, Lcom/can/ui/draw/HeaderLayout;->mEnable:Z

    .line 123
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mHeader:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 124
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mSubTitle:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/can/ui/draw/HeaderLayout;->mEnable:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 125
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mHintTitle:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/can/ui/draw/HeaderLayout;->mEnable:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 126
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mOnlyOneButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 127
    iget-boolean v1, p0, Lcom/can/ui/draw/HeaderLayout;->mEnable:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 128
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method public setHintTitle(Ljava/lang/CharSequence;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 238
    iget v0, p0, Lcom/can/ui/draw/HeaderLayout;->style_id:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mHintTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout;->mHintTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 242
    :cond_0
    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout;->mHintTitle:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 216
    :cond_0
    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout;->mIcon:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setMiddleTitle(Ljava/lang/CharSequence;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mMiddleText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout;->mMiddleText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 292
    :cond_0
    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout;->mMiddleText:Landroid/widget/TextView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setOnProgressChanged(Lcom/can/ui/draw/HeaderLayout$onProgressChanged;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/can/ui/draw/HeaderLayout;->mOnProgressChange:Lcom/can/ui/draw/HeaderLayout$onProgressChanged;

    return-void
.end method

.method public setOneButtonListener(Lcom/can/ui/draw/HeaderLayout$onOneButtonListener;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/can/ui/draw/HeaderLayout;->mOneButtonListener:Lcom/can/ui/draw/HeaderLayout$onOneButtonListener;

    return-void
.end method

.method public setOneCheckBoxListener(Lcom/can/ui/draw/HeaderLayout$onOneCheckBoxListener;)V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mOneCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0, p1}, Lcom/can/ui/draw/HeaderLayout;->setOneCheckListener(Lcom/can/ui/draw/HeaderLayout$onOneCheckBoxListener;)V

    :cond_0
    return-void
.end method

.method public setOneCheckListener(Lcom/can/ui/draw/HeaderLayout$onOneCheckBoxListener;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/can/ui/draw/HeaderLayout;->mOneCheckListener:Lcom/can/ui/draw/HeaderLayout$onOneCheckBoxListener;

    return-void
.end method

.method public setPromptTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mPrompt_title:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 367
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 368
    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout;->mPrompt_title:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    .line 370
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setPromptTitle2(Ljava/lang/CharSequence;)V
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mPrompt_title2:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 378
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout;->mPrompt_title2:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    .line 381
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setRadioButtonTitle(II)V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setText(I)V

    .line 449
    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout;->mRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {p0, p2}, Landroid/widget/RadioButton;->setText(I)V

    return-void
.end method

.method public setRadioCheck(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 454
    iget-object p1, p0, Lcom/can/ui/draw/HeaderLayout;->item_two_radioButton:Landroid/widget/RadioGroup;

    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/widget/RadioButton;->getId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 456
    :cond_0
    iget-object p1, p0, Lcom/can/ui/draw/HeaderLayout;->item_two_radioButton:Landroid/widget/RadioGroup;

    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout;->mRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/widget/RadioButton;->getId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/RadioGroup;->check(I)V

    :goto_0
    return-void
.end method

.method public setRightTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout;->mRightTextTitle:Landroid/widget/TextView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 224
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setSeekbarMax(I)V
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 512
    iput p1, p0, Lcom/can/ui/draw/HeaderLayout;->item_seekbarMax:I

    .line 513
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_0
    return-void
.end method

.method public setSeekbarPos(I)V
    .locals 0

    .line 529
    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p0, :cond_0

    .line 530
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public setSeekbarText(I)V
    .locals 1

    .line 524
    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout;->mSeekbarTitle:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setSelected()V
    .locals 1

    .line 169
    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout;->mHeader:Landroid/view/View;

    const v0, 0x7f0703ff

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public setSubTitle(Ljava/lang/CharSequence;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mSubTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 233
    :cond_0
    iget-object p0, p0, Lcom/can/ui/draw/HeaderLayout;->mSubTitle:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setTwoButtonListener(Lcom/can/ui/draw/HeaderLayout$onTwoButtonListener;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/can/ui/draw/HeaderLayout;->mTwoButtonListener:Lcom/can/ui/draw/HeaderLayout$onTwoButtonListener;

    return-void
.end method

.method public setTwoRadioButtonListener(Lcom/can/ui/draw/HeaderLayout$onTwoRadioButtonListener;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/can/ui/draw/HeaderLayout;->mTwoRadioListener:Lcom/can/ui/draw/HeaderLayout$onTwoRadioButtonListener;

    return-void
.end method

.method public setTwoRadioButtonListener(Lcom/can/ui/draw/HeaderLayout;Lcom/can/ui/draw/HeaderLayout$onTwoRadioButtonListener;)V
    .locals 0

    .line 462
    iget-object p1, p0, Lcom/can/ui/draw/HeaderLayout;->item_two_radioButton:Landroid/widget/RadioGroup;

    if-eqz p1, :cond_0

    .line 463
    invoke-virtual {p0, p2}, Lcom/can/ui/draw/HeaderLayout;->setTwoRadioButtonListener(Lcom/can/ui/draw/HeaderLayout$onTwoRadioButtonListener;)V

    :cond_0
    return-void
.end method

.method public titleTwoRadioButton()V
    .locals 3

    .line 415
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b0080

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 416
    iget-object v1, p0, Lcom/can/ui/draw/HeaderLayout;->mLayoutRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v1, 0x7f0804c7

    .line 417
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/can/ui/draw/HeaderLayout;->item_two_radioButton:Landroid/widget/RadioGroup;

    const v1, 0x7f0804ba

    .line 418
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/can/ui/draw/HeaderLayout;->mRadioButton1:Landroid/widget/RadioButton;

    const v1, 0x7f0804bb

    .line 419
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->mRadioButton2:Landroid/widget/RadioButton;

    .line 421
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->item_two_button_left:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 422
    iget-object v1, p0, Lcom/can/ui/draw/HeaderLayout;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->item_two_button_right:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 425
    iget-object v1, p0, Lcom/can/ui/draw/HeaderLayout;->mRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/can/ui/draw/HeaderLayout;->item_two_radioButton:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/can/ui/draw/HeaderLayout$8;

    invoke-direct {v1, p0}, Lcom/can/ui/draw/HeaderLayout$8;-><init>(Lcom/can/ui/draw/HeaderLayout;)V

    .line 429
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method
