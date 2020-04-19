.class Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$5;
.super Ljava/lang/Object;
.source "GeneralParticipantsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->onBindViewHolder(Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;

.field final synthetic val$holder:Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;

.field final synthetic val$participant:Lus/zoom/zrcsdk/model/ZRCParticipant;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;Lus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$5;->this$0:Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;

    iput-object p2, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$5;->val$holder:Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;

    iput-object p3, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$5;->val$participant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 237
    iget-object p1, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$5;->this$0:Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;

    invoke-static {p1}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->access$100(Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;)Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$OnMeetingParticipantItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 238
    iget-object p1, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$5;->this$0:Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;

    invoke-static {p1}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->access$100(Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;)Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$OnMeetingParticipantItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$5;->val$holder:Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;

    iget-object v0, v0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$GeneralParticipantsViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$5;->val$participant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-interface {p1, v0, v1}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$OnMeetingParticipantItemClickListener;->onMeetingParticipantItemClick(Landroid/view/View;Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    :cond_0
    return-void
.end method
