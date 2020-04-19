.class Lus/zoom/zrc/view/IMAddrBookListFragment$14;
.super Ljava/lang/Object;
.source "IMAddrBookListFragment.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/IMAddrBookListFragment;->showMeetingSeekDurationBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

.field final synthetic val$window:Lus/zoom/zrc/view/MeetingSeekBarPopWindow;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/IMAddrBookListFragment;Lus/zoom/zrc/view/MeetingSeekBarPopWindow;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$14;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    iput-object p2, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$14;->val$window:Lus/zoom/zrc/view/MeetingSeekBarPopWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 552
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$14;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    iget-object v1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$14;->val$window:Lus/zoom/zrc/view/MeetingSeekBarPopWindow;

    invoke-virtual {v1}, Lus/zoom/zrc/view/MeetingSeekBarPopWindow;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/IMAddrBookListFragment;->setMeetingDuration(I)V

    return-void
.end method
