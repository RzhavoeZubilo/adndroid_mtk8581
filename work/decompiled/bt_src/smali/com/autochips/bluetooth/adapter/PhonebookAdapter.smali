.class public Lcom/autochips/bluetooth/adapter/PhonebookAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhonebookAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/adapter/PhonebookAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PhonebookAdapter"


# instance fields
.field private contactModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/PhoneBookModel;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsListSelected:Z

.field private mSelectIdx:I


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

    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;->mIsListSelected:Z

    .line 32
    iput-object p2, p0, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;->contactModels:Ljava/util/List;

    .line 33
    iput v0, p0, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;->mSelectIdx:I

    .line 34
    iput-object p1, p0, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;->contactModels:Ljava/util/List;

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

    .line 44
    iget-object v0, p0, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;->contactModels:Ljava/util/List;

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

    .line 123
    iget v0, p0, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;->mSelectIdx:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    if-nez p2, :cond_3

    .line 56
    new-instance p2, Lcom/autochips/bluetooth/adapter/PhonebookAdapter$ViewHolder;

    invoke-direct {p2}, Lcom/autochips/bluetooth/adapter/PhonebookAdapter$ViewHolder;-><init>()V

    .line 57
    iget-object p3, p0, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0095

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLexus()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isTOYOTACROWN()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x7f0b0094

    goto :goto_1

    :cond_2
    :goto_0
    const v0, 0x7f0b0096

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f080144

    .line 58
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/autochips/bluetooth/adapter/PhonebookAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const v0, 0x7f080145

    .line 59
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autochips/bluetooth/view/MarqueeText;

    iput-object v0, p2, Lcom/autochips/bluetooth/adapter/PhonebookAdapter$ViewHolder;->phone:Landroid/widget/TextView;

    const v0, 0x7f08010f

    .line 60
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p2, Lcom/autochips/bluetooth/adapter/PhonebookAdapter$ViewHolder;->favor:Landroid/widget/ImageButton;

    .line 61
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 63
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/autochips/bluetooth/adapter/PhonebookAdapter$ViewHolder;

    move-object v9, p3

    move-object p3, p2

    move-object p2, v9

    .line 65
    :goto_2
    sget-object v0, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "favor settag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;->contactModels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/bluetooth/model/PhoneBookModel;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getName()Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;->contactModels:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autochips/bluetooth/model/PhoneBookModel;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPhoneNumber()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    .line 69
    iget-object v2, p2, Lcom/autochips/bluetooth/adapter/PhonebookAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v0, v7, v3

    const-string v0, "%s"

    invoke-static {v6, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 71
    :cond_4
    iget-object v2, p2, Lcom/autochips/bluetooth/adapter/PhonebookAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    add-int/lit8 v8, p1, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    aput-object v0, v7, v5

    const-string v0, "%d. %s"

    invoke-static {v6, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :goto_3
    iget-object p2, p2, Lcom/autochips/bluetooth/adapter/PhonebookAdapter$ViewHolder;->phone:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget p2, p0, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;->mSelectIdx:I

    if-ne p1, p2, :cond_c

    iget-boolean p1, p0, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;->mIsListSelected:Z

    if-eqz p1, :cond_c

    .line 76
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 77
    iget-object p1, p0, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "content://com.carocean.status.provider/sys"

    const-string v0, "SYS_THEME"

    invoke-static {p2, p1, v0, v5}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const p2, 0x7f0700dd

    if-eq p1, v5, :cond_7

    if-eq p1, v4, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    goto :goto_4

    :cond_5
    const p2, 0x7f0700a1

    goto :goto_4

    :cond_6
    const p2, 0x7f0700f0

    .line 90
    :cond_7
    :goto_4
    invoke-virtual {p3, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_9

    .line 92
    :cond_8
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLexus()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isTOYOTACROWN()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    const p1, 0x7f070196

    goto :goto_6

    .line 93
    :cond_a
    :goto_5
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1600x720And240dpi()Z

    move-result p1

    if-eqz p1, :cond_b

    const p1, 0x7f07018f

    goto :goto_6

    :cond_b
    const p1, 0x7f07018c

    .line 101
    :goto_6
    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_9

    .line 104
    :cond_c
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLexus()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isTOYOTACROWN()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_7

    :cond_d
    const p1, 0x7f070195

    goto :goto_8

    .line 105
    :cond_e
    :goto_7
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1600x720And240dpi()Z

    move-result p1

    if-eqz p1, :cond_f

    const p1, 0x7f07018e

    goto :goto_8

    :cond_f
    const p1, 0x7f07018b

    .line 113
    :goto_8
    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_9
    return-object p3
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

    .line 131
    iput-object p1, p0, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;->contactModels:Ljava/util/List;

    return-void
.end method

.method public setListSelected(Z)V
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;->mIsListSelected:Z

    return-void
.end method

.method public setSelectIndex(I)V
    .locals 0

    .line 119
    iput p1, p0, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;->mSelectIdx:I

    return-void
.end method
