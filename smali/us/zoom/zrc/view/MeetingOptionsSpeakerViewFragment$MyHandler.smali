.class Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$MyHandler;
.super Landroid/os/Handler;
.source "MeetingOptionsSpeakerViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private mOuter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 80
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$MyHandler;->mOuter:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$1;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$MyHandler;-><init>(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$MyHandler;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    if-eqz v0, :cond_1

    .line 88
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    if-eqz p1, :cond_1

    .line 90
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->changeVideoIcon()V

    :cond_1
    :goto_0
    return-void
.end method
