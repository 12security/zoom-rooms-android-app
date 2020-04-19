.class public Lus/zoom/zrc/base/widget/RepeatClickDetector;
.super Ljava/lang/Object;
.source "RepeatClickDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/base/widget/RepeatClickDetector$OnRepeatClickListener;
    }
.end annotation


# static fields
.field private static final MAX_ONE_CLICK_INTERVAL:J = 0xc8L


# instance fields
.field private clickCount:I

.field private clickTime:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/base/widget/RepeatClickDetector;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lus/zoom/zrc/base/widget/RepeatClickDetector;->increment()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/base/widget/RepeatClickDetector;)I
    .locals 0

    .line 10
    iget p0, p0, Lus/zoom/zrc/base/widget/RepeatClickDetector;->clickCount:I

    return p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/base/widget/RepeatClickDetector;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lus/zoom/zrc/base/widget/RepeatClickDetector;->reset()V

    return-void
.end method

.method private increment()V
    .locals 5

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lus/zoom/zrc/base/widget/RepeatClickDetector;->clickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lus/zoom/zrc/base/widget/RepeatClickDetector;->clickCount:I

    .line 28
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lus/zoom/zrc/base/widget/RepeatClickDetector;->clickTime:J

    .line 29
    iget v0, p0, Lus/zoom/zrc/base/widget/RepeatClickDetector;->clickCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lus/zoom/zrc/base/widget/RepeatClickDetector;->clickCount:I

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lus/zoom/zrc/base/widget/RepeatClickDetector;->clickCount:I

    return-void
.end method

.method private static setupRepeatClick(Landroid/view/View;Lus/zoom/zrc/base/widget/RepeatClickDetector$OnRepeatClickListener;I)V
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lus/zoom/zrc/base/widget/RepeatClickDetector$OnRepeatClickListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 45
    new-instance v0, Lus/zoom/zrc/base/widget/RepeatClickDetector;

    invoke-direct {v0}, Lus/zoom/zrc/base/widget/RepeatClickDetector;-><init>()V

    .line 46
    new-instance v1, Lus/zoom/zrc/base/widget/RepeatClickDetector$1;

    invoke-direct {v1, v0, p2, p1}, Lus/zoom/zrc/base/widget/RepeatClickDetector$1;-><init>(Lus/zoom/zrc/base/widget/RepeatClickDetector;ILus/zoom/zrc/base/widget/RepeatClickDetector$OnRepeatClickListener;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static setupRepeatClick_3(Landroid/view/View;Lus/zoom/zrc/base/widget/RepeatClickDetector$OnRepeatClickListener;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lus/zoom/zrc/base/widget/RepeatClickDetector$OnRepeatClickListener;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v0, 0x3

    .line 37
    invoke-static {p0, p1, v0}, Lus/zoom/zrc/base/widget/RepeatClickDetector;->setupRepeatClick(Landroid/view/View;Lus/zoom/zrc/base/widget/RepeatClickDetector$OnRepeatClickListener;I)V

    return-void
.end method

.method public static setupRepeatClick_5(Landroid/view/View;Lus/zoom/zrc/base/widget/RepeatClickDetector$OnRepeatClickListener;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lus/zoom/zrc/base/widget/RepeatClickDetector$OnRepeatClickListener;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v0, 0x5

    .line 41
    invoke-static {p0, p1, v0}, Lus/zoom/zrc/base/widget/RepeatClickDetector;->setupRepeatClick(Landroid/view/View;Lus/zoom/zrc/base/widget/RepeatClickDetector$OnRepeatClickListener;I)V

    return-void
.end method
