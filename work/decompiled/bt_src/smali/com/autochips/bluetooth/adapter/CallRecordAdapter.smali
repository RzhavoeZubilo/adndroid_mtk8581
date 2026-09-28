.class public Lcom/autochips/bluetooth/adapter/CallRecordAdapter;
.super Landroid/widget/BaseAdapter;
.source "CallRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/adapter/CallRecordAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CallRecordAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsListSelected:Z

.field private mSelectIdx:I

.field private recordModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/PhoneBookModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/PhoneBookModel;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->mIsListSelected:Z

    .line 33
    iput-object p2, p0, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->recordModelList:Ljava/util/List;

    .line 34
    iput v0, p0, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->mSelectIdx:I

    .line 35
    iput-object p1, p0, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->recordModelList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->recordModelList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/model/PhoneBookModel;

    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectIndex()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->mSelectIdx:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    if-nez p2, :cond_1

    .line 57
    new-instance v2, Lcom/autochips/bluetooth/adapter/CallRecordAdapter$ViewHolder;

    invoke-direct {v2, v0}, Lcom/autochips/bluetooth/adapter/CallRecordAdapter$ViewHolder;-><init>(Lcom/autochips/bluetooth/adapter/CallRecordAdapter;)V

    .line 58
    iget-object v3, v0, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f0b005c

    goto :goto_0

    :cond_0
    const v4, 0x7f0b005b

    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f08013f

    .line 59
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/autochips/bluetooth/adapter/CallRecordAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const v4, 0x7f080140

    .line 60
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/autochips/bluetooth/adapter/CallRecordAdapter$ViewHolder;->phone:Landroid/widget/TextView;

    const v4, 0x7f080141

    .line 61
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/autochips/bluetooth/adapter/CallRecordAdapter$ViewHolder;->time:Landroid/widget/TextView;

    const v4, 0x7f080082

    .line 62
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v2, Lcom/autochips/bluetooth/adapter/CallRecordAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const v4, 0x7f08013e

    .line 63
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, v2, Lcom/autochips/bluetooth/adapter/CallRecordAdapter$ViewHolder;->del:Landroid/widget/ImageButton;

    .line 64
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autochips/bluetooth/adapter/CallRecordAdapter$ViewHolder;

    move-object/from16 v3, p2

    .line 70
    :goto_1
    iget-object v4, v0, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->recordModelList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autochips/bluetooth/model/PhoneBookModel;

    invoke-virtual {v4}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getCallType()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, -0x1

    if-eq v4, v5, :cond_6

    const/16 v7, 0x40

    if-eq v4, v7, :cond_6

    const/16 v7, 0x100

    if-eq v4, v7, :cond_4

    const/16 v7, 0x400

    if-eq v4, v7, :cond_2

    move v4, v6

    goto :goto_2

    .line 77
    :cond_2
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f0700bf

    goto :goto_2

    :cond_3
    const v4, 0x7f070161

    goto :goto_2

    .line 80
    :cond_4
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v4

    if-eqz v4, :cond_5

    const v4, 0x7f0700c0

    goto :goto_2

    :cond_5
    const v4, 0x7f070162

    goto :goto_2

    .line 74
    :cond_6
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v4

    if-eqz v4, :cond_7

    const v4, 0x7f0700be

    goto :goto_2

    :cond_7
    const v4, 0x7f070160

    .line 84
    :goto_2
    iget-object v7, v2, Lcom/autochips/bluetooth/adapter/CallRecordAdapter$ViewHolder;->del:Landroid/widget/ImageButton;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 85
    iget-object v7, v2, Lcom/autochips/bluetooth/adapter/CallRecordAdapter$ViewHolder;->del:Landroid/widget/ImageButton;

    new-instance v8, Lcom/autochips/bluetooth/adapter/CallRecordAdapter$1;

    invoke-direct {v8, v0}, Lcom/autochips/bluetooth/adapter/CallRecordAdapter$1;-><init>(Lcom/autochips/bluetooth/adapter/CallRecordAdapter;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v7, v0, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->recordModelList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/autochips/bluetooth/model/PhoneBookModel;

    invoke-virtual {v7}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getName()Ljava/lang/String;

    move-result-object v7

    .line 91
    iget-object v8, v0, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->recordModelList:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/autochips/bluetooth/model/PhoneBookModel;

    invoke-virtual {v8}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPhoneNumber()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 92
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_9

    .line 94
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 95
    iget-object v7, v2, Lcom/autochips/bluetooth/adapter/CallRecordAdapter$ViewHolder;->phone:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    move-object v7, v8

    goto :goto_3

    .line 98
    :cond_9
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 99
    iget-object v9, v2, Lcom/autochips/bluetooth/adapter/CallRecordAdapter$ViewHolder;->phone:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    :cond_a
    :goto_3
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLexus()Z

    move-result v9

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-nez v9, :cond_c

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isTOYOTACROWN()Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_4

    .line 105
    :cond_b
    iget-object v9, v2, Lcom/autochips/bluetooth/adapter/CallRecordAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 103
    :cond_c
    :goto_4
    iget-object v9, v2, Lcom/autochips/bluetooth/adapter/CallRecordAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    new-array v14, v11, [Ljava/lang/Object;

    add-int/lit8 v15, v1, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v10

    aput-object v7, v14, v12

    const-string v7, "%d. %s"

    invoke-static {v13, v7, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :goto_5
    iget-object v7, v2, Lcom/autochips/bluetooth/adapter/CallRecordAdapter$ViewHolder;->phone:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v7, v2, Lcom/autochips/bluetooth/adapter/CallRecordAdapter$ViewHolder;->time:Landroid/widget/TextView;

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isTOYOTACROWN()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1024x460And160dpi()Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, v0, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->mContext:Landroid/content/Context;

    iget-object v9, v0, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->recordModelList:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/autochips/bluetooth/model/PhoneBookModel;

    invoke-virtual {v9}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getTimeStamp()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcom/autochips/bluetooth/util/StaticUtil;->formatLexusCalllogTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_d
    iget-object v8, v0, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->mContext:Landroid/content/Context;

    iget-object v9, v0, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->recordModelList:Ljava/util/List;

    .line 109
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/autochips/bluetooth/model/PhoneBookModel;

    invoke-virtual {v9}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getTimeStamp()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcom/autochips/bluetooth/util/StaticUtil;->formatCalllogTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 108
    :goto_6
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eq v4, v6, :cond_e

    .line 111
    iget-object v2, v2, Lcom/autochips/bluetooth/adapter/CallRecordAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    :cond_e
    iget v2, v0, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->mSelectIdx:I

    if-ne v1, v2, :cond_16

    iget-boolean v1, v0, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->mIsListSelected:Z

    if-eqz v1, :cond_16

    .line 115
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v1

    const v2, 0x7f0700dd

    if-eqz v1, :cond_12

    .line 116
    iget-object v1, v0, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "content://com.carocean.status.provider/sys"

    const-string v6, "SYS_THEME"

    invoke-static {v4, v1, v6, v12}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v12, :cond_11

    if-eq v1, v11, :cond_10

    if-eq v1, v5, :cond_f

    goto :goto_7

    :cond_f
    const v2, 0x7f0700a1

    goto :goto_7

    :cond_10
    const v2, 0x7f0700f0

    .line 129
    :cond_11
    :goto_7
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_c

    .line 131
    :cond_12
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_9

    :cond_13
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLexus()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isTOYOTACROWN()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_8

    :cond_14
    const v2, 0x7f070196

    goto :goto_9

    :cond_15
    :goto_8
    const v2, 0x7f070194

    :goto_9
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_c

    .line 134
    :cond_16
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v1

    if-eqz v1, :cond_17

    const v1, 0x7f0700c2

    goto :goto_b

    :cond_17
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLexus()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isTOYOTACROWN()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_a

    :cond_18
    const v1, 0x7f070195

    goto :goto_b

    :cond_19
    :goto_a
    const v1, 0x7f070193

    :goto_b
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_c
    return-object v3
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/PhoneBookModel;",
            ">;)V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->recordModelList:Ljava/util/List;

    return-void
.end method

.method public setListSelected(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->mIsListSelected:Z

    return-void
.end method

.method public setSelectIndex(I)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->mSelectIdx:I

    return-void
.end method
