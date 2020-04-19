.class Lus/zoom/zrc/view/PresentationFragment$3;
.super Ljava/lang/Object;
.source "PresentationFragment.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/PresentationFragment;->showMeetingSeekDurationBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/PresentationFragment;

.field final synthetic val$window:Lus/zoom/zrc/view/MeetingSeekBarPopWindow;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/PresentationFragment;Lus/zoom/zrc/view/MeetingSeekBarPopWindow;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lus/zoom/zrc/view/PresentationFragment$3;->this$0:Lus/zoom/zrc/view/PresentationFragment;

    iput-object p2, p0, Lus/zoom/zrc/view/PresentationFragment$3;->val$window:Lus/zoom/zrc/view/MeetingSeekBarPopWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 5

    .line 182
    iget-object v0, p0, Lus/zoom/zrc/view/PresentationFragment$3;->this$0:Lus/zoom/zrc/view/PresentationFragment;

    iget-object v1, p0, Lus/zoom/zrc/view/PresentationFragment$3;->val$window:Lus/zoom/zrc/view/MeetingSeekBarPopWindow;

    invoke-virtual {v1}, Lus/zoom/zrc/view/MeetingSeekBarPopWindow;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Lus/zoom/zrc/view/PresentationFragment;->access$202(Lus/zoom/zrc/view/PresentationFragment;I)I

    .line 183
    iget-object v0, p0, Lus/zoom/zrc/view/PresentationFragment$3;->this$0:Lus/zoom/zrc/view/PresentationFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/PresentationFragment;->access$300(Lus/zoom/zrc/view/PresentationFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/PresentationFragment$3;->this$0:Lus/zoom/zrc/view/PresentationFragment;

    sget v2, Lus/zoom/zrcbox/R$string;->zrc_meeting_duration_txt:I

    invoke-virtual {v1, v2}, Lus/zoom/zrc/view/PresentationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lus/zoom/zrc/view/PresentationFragment$3;->this$0:Lus/zoom/zrc/view/PresentationFragment;

    invoke-static {v3}, Lus/zoom/zrc/view/PresentationFragment;->access$200(Lus/zoom/zrc/view/PresentationFragment;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
