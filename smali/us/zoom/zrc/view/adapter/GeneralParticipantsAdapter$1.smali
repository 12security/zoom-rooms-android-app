.class Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$1;
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


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$1;->this$0:Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 95
    iget-object p1, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$1;->this$0:Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;

    invoke-static {p1}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->access$000(Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;)Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$OnParticipantOperateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$1;->this$0:Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;

    invoke-static {p1}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;->access$000(Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter;)Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$OnParticipantOperateListener;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/view/adapter/GeneralParticipantsAdapter$OnParticipantOperateListener;->onClickAdmitAllSilentParticipants()V

    :cond_0
    return-void
.end method
