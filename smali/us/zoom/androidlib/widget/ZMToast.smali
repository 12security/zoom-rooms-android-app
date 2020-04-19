.class public abstract Lus/zoom/androidlib/widget/ZMToast;
.super Ljava/lang/Object;
.source "ZMToast.java"


# static fields
.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I

.field private static defaultGravity:I

.field private static mHandler:Landroid/os/Handler;

.field private static mRunnable:Ljava/lang/Runnable;

.field private static mTextView:Landroid/widget/TextView;

.field private static mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lus/zoom/androidlib/widget/ZMToast;->mHandler:Landroid/os/Handler;

    .line 21
    new-instance v0, Lus/zoom/androidlib/widget/ZMToast$1;

    invoke-direct {v0}, Lus/zoom/androidlib/widget/ZMToast$1;-><init>()V

    sput-object v0, Lus/zoom/androidlib/widget/ZMToast;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/widget/Toast;
    .locals 1

    .line 11
    sget-object v0, Lus/zoom/androidlib/widget/ZMToast;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/CharSequence;ILjava/lang/Integer;)V
    .locals 0

    .line 11
    invoke-static {p0, p1, p2, p3}, Lus/zoom/androidlib/widget/ZMToast;->toast(Landroid/content/Context;Ljava/lang/CharSequence;ILjava/lang/Integer;)V

    return-void
.end method

.method public static show(Landroid/content/Context;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 100
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lus/zoom/androidlib/widget/ZMToast;->toast(Landroid/content/Context;Ljava/lang/CharSequence;ILjava/lang/Integer;)V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    :cond_1
    const/4 v0, 0x0

    .line 89
    invoke-static {p0, p1, p2, v0}, Lus/zoom/androidlib/widget/ZMToast;->toast(Landroid/content/Context;Ljava/lang/CharSequence;ILjava/lang/Integer;)V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;IIJ)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 74
    :cond_1
    sget-object v0, Lus/zoom/androidlib/widget/ZMToast;->mHandler:Landroid/os/Handler;

    new-instance v1, Lus/zoom/androidlib/widget/ZMToast$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lus/zoom/androidlib/widget/ZMToast$2;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static toast(Landroid/content/Context;Ljava/lang/CharSequence;ILjava/lang/Integer;)V
    .locals 2

    .line 30
    sget-object v0, Lus/zoom/androidlib/widget/ZMToast;->mHandler:Landroid/os/Handler;

    sget-object v1, Lus/zoom/androidlib/widget/ZMToast;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 v0, 0x3e8

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0xbb8

    .line 43
    :goto_0
    :pswitch_1
    sget-object p2, Lus/zoom/androidlib/widget/ZMToast;->mToast:Landroid/widget/Toast;

    if-eqz p2, :cond_0

    .line 44
    sget-object p0, Lus/zoom/androidlib/widget/ZMToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 46
    :cond_0
    new-instance p2, Landroid/widget/Toast;

    invoke-direct {p2, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object p2, Lus/zoom/androidlib/widget/ZMToast;->mToast:Landroid/widget/Toast;

    .line 47
    sget p2, Lus/zoom/androidlib/R$layout;->zm_toast:I

    const/4 v1, 0x0

    invoke-static {p0, p2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 48
    sget p2, Lus/zoom/androidlib/R$id;->text:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    sput-object p2, Lus/zoom/androidlib/widget/ZMToast;->mTextView:Landroid/widget/TextView;

    .line 49
    sget-object p2, Lus/zoom/androidlib/widget/ZMToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    sget-object p1, Lus/zoom/androidlib/widget/ZMToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->getGravity()I

    move-result p1

    sput p1, Lus/zoom/androidlib/widget/ZMToast;->defaultGravity:I

    .line 51
    sget-object p1, Lus/zoom/androidlib/widget/ZMToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    :goto_1
    const/4 p0, 0x0

    if-eqz p3, :cond_1

    .line 55
    sget-object p1, Lus/zoom/androidlib/widget/ZMToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2, p0, p0}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_2

    .line 58
    :cond_1
    sget-object p1, Lus/zoom/androidlib/widget/ZMToast;->mToast:Landroid/widget/Toast;

    sget p2, Lus/zoom/androidlib/widget/ZMToast;->defaultGravity:I

    invoke-virtual {p1, p2, p0, p0}, Landroid/widget/Toast;->setGravity(III)V

    .line 61
    :goto_2
    sget-object p0, Lus/zoom/androidlib/widget/ZMToast;->mHandler:Landroid/os/Handler;

    sget-object p1, Lus/zoom/androidlib/widget/ZMToast;->mRunnable:Ljava/lang/Runnable;

    int-to-long p2, v0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    sget-object p0, Lus/zoom/androidlib/widget/ZMToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
