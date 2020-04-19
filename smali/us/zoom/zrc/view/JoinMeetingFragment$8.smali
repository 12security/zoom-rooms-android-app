.class Lus/zoom/zrc/view/JoinMeetingFragment$8;
.super Ljava/lang/Object;
.source "JoinMeetingFragment.java"

# interfaces
.implements Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/JoinMeetingFragment;->initMeetingHistoryPopupUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/JoinMeetingFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/JoinMeetingFragment;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lus/zoom/zrc/view/JoinMeetingFragment$8;->this$0:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lus/zoom/zrcsdk/model/MeetingHistory;)V
    .locals 1

    .line 252
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/MeetingHistory;->getMeetingHistoryID()Ljava/lang/String;

    move-result-object p1

    .line 253
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment$8;->this$0:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/JoinMeetingFragment;->access$900(Lus/zoom/zrc/view/JoinMeetingFragment;)Lus/zoom/zrc/base/widget/ZRCEditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/widget/ZRCEditText;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingFragment$8;->this$0:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-static {v0, p1}, Lus/zoom/zrc/view/JoinMeetingFragment;->access$1000(Lus/zoom/zrc/view/JoinMeetingFragment;Ljava/lang/String;)V

    .line 255
    iget-object p1, p0, Lus/zoom/zrc/view/JoinMeetingFragment$8;->this$0:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/JoinMeetingFragment;->access$1100(Lus/zoom/zrc/view/JoinMeetingFragment;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
