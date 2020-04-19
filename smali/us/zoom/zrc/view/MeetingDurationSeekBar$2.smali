.class Lus/zoom/zrc/view/MeetingDurationSeekBar$2;
.super Ljava/lang/Object;
.source "MeetingDurationSeekBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/MeetingDurationSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/MeetingDurationSeekBar;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/MeetingDurationSeekBar;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar$2;->this$0:Lus/zoom/zrc/view/MeetingDurationSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 131
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar$2;->this$0:Lus/zoom/zrc/view/MeetingDurationSeekBar;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingDurationSeekBar;->access$100(Lus/zoom/zrc/view/MeetingDurationSeekBar;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar$2;->this$0:Lus/zoom/zrc/view/MeetingDurationSeekBar;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingDurationSeekBar;->access$200(Lus/zoom/zrc/view/MeetingDurationSeekBar;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/MeetingDurationSeekBar$2;->this$0:Lus/zoom/zrc/view/MeetingDurationSeekBar;

    invoke-static {v1}, Lus/zoom/zrc/view/MeetingDurationSeekBar;->access$200(Lus/zoom/zrc/view/MeetingDurationSeekBar;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
