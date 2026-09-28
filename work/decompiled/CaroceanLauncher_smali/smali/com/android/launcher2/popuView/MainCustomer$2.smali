.class Lcom/android/launcher2/popuView/MainCustomer$2;
.super Ljava/lang/Object;
.source "MainCustomer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/popuView/MainCustomer;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/popuView/MainCustomer;


# direct methods
.method constructor <init>(Lcom/android/launcher2/popuView/MainCustomer;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$2;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 487
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$2;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomer;->access$800(Lcom/android/launcher2/popuView/MainCustomer;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/viewpager/widget/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
