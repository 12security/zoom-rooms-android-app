.class Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$1;
.super Ljava/lang/Object;
.source "MeetingHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;->onBindViewHolder(Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;

.field final synthetic val$meetingHistory:Lus/zoom/zrcsdk/model/MeetingHistory;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;Lus/zoom/zrcsdk/model/MeetingHistory;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$1;->this$0:Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;

    iput-object p2, p0, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$1;->val$meetingHistory:Lus/zoom/zrcsdk/model/MeetingHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 66
    iget-object p1, p0, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$1;->this$0:Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;

    invoke-static {p1}, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;->access$400(Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;)Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$1;->this$0:Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;

    invoke-static {p1}, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;->access$400(Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter;)Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$OnItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$1;->val$meetingHistory:Lus/zoom/zrcsdk/model/MeetingHistory;

    invoke-interface {p1, v0}, Lus/zoom/zrc/view/adapter/MeetingHistoryAdapter$OnItemClickListener;->onItemClick(Lus/zoom/zrcsdk/model/MeetingHistory;)V

    :cond_0
    return-void
.end method
