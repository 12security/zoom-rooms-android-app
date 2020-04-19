.class Lus/zoom/zrcsdk/CallBackUI$38;
.super Ljava/lang/Object;
.source "CallBackUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrcsdk/CallBackUI;->onUpdateMeetingVideoLayoutStatus(ZZZZZZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrcsdk/CallBackUI;

.field final synthetic val$canAdjustFloatingVideo:Z

.field final synthetic val$canSwitchFloatingShareContent:Z

.field final synthetic val$canSwitchShareOnAllScreens:Z

.field final synthetic val$canSwitchSpeakerview:Z

.field final synthetic val$canSwitchWallview:Z

.field final synthetic val$isInFloatingShareContent:Z

.field final synthetic val$isInFloatingVideoStrip:Z

.field final synthetic val$isInShareOnAllScreens:Z

.field final synthetic val$isInWallview:Z


# direct methods
.method constructor <init>(Lus/zoom/zrcsdk/CallBackUI;ZZZZZZZZZ)V
    .locals 0

    .line 987
    iput-object p1, p0, Lus/zoom/zrcsdk/CallBackUI$38;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    iput-boolean p2, p0, Lus/zoom/zrcsdk/CallBackUI$38;->val$canSwitchWallview:Z

    iput-boolean p3, p0, Lus/zoom/zrcsdk/CallBackUI$38;->val$isInWallview:Z

    iput-boolean p4, p0, Lus/zoom/zrcsdk/CallBackUI$38;->val$isInFloatingVideoStrip:Z

    iput-boolean p5, p0, Lus/zoom/zrcsdk/CallBackUI$38;->val$canAdjustFloatingVideo:Z

    iput-boolean p6, p0, Lus/zoom/zrcsdk/CallBackUI$38;->val$canSwitchFloatingShareContent:Z

    iput-boolean p7, p0, Lus/zoom/zrcsdk/CallBackUI$38;->val$isInFloatingShareContent:Z

    iput-boolean p8, p0, Lus/zoom/zrcsdk/CallBackUI$38;->val$canSwitchShareOnAllScreens:Z

    iput-boolean p9, p0, Lus/zoom/zrcsdk/CallBackUI$38;->val$isInShareOnAllScreens:Z

    iput-boolean p10, p0, Lus/zoom/zrcsdk/CallBackUI$38;->val$canSwitchSpeakerview:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 991
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI$38;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    invoke-static {v0}, Lus/zoom/zrcsdk/CallBackUI;->access$400(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/IMeetingEventListener;

    .line 992
    new-instance v2, Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    invoke-direct {v2}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;-><init>()V

    .line 993
    iget-boolean v3, p0, Lus/zoom/zrcsdk/CallBackUI$38;->val$canSwitchWallview:Z

    invoke-virtual {v2, v3}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->setCanSwitchWallview(Z)V

    .line 994
    iget-boolean v3, p0, Lus/zoom/zrcsdk/CallBackUI$38;->val$isInWallview:Z

    invoke-virtual {v2, v3}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->setInWallview(Z)V

    .line 995
    iget-boolean v3, p0, Lus/zoom/zrcsdk/CallBackUI$38;->val$isInFloatingVideoStrip:Z

    invoke-virtual {v2, v3}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->setInFloatingVideoStrip(Z)V

    .line 996
    iget-boolean v3, p0, Lus/zoom/zrcsdk/CallBackUI$38;->val$canAdjustFloatingVideo:Z

    invoke-virtual {v2, v3}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->setCanAdjustFloatingVideo(Z)V

    .line 997
    iget-boolean v3, p0, Lus/zoom/zrcsdk/CallBackUI$38;->val$canSwitchFloatingShareContent:Z

    invoke-virtual {v2, v3}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->setCanSwitchFloatingShareContent(Z)V

    .line 998
    iget-boolean v3, p0, Lus/zoom/zrcsdk/CallBackUI$38;->val$isInFloatingShareContent:Z

    invoke-virtual {v2, v3}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->setInFloatingShareContent(Z)V

    .line 999
    iget-boolean v3, p0, Lus/zoom/zrcsdk/CallBackUI$38;->val$canSwitchShareOnAllScreens:Z

    invoke-virtual {v2, v3}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->setCanSwitchShareOnAllScreens(Z)V

    .line 1000
    iget-boolean v3, p0, Lus/zoom/zrcsdk/CallBackUI$38;->val$isInShareOnAllScreens:Z

    invoke-virtual {v2, v3}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->setInShareOnAllScreens(Z)V

    .line 1001
    iget-boolean v3, p0, Lus/zoom/zrcsdk/CallBackUI$38;->val$canSwitchSpeakerview:Z

    invoke-virtual {v2, v3}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->setCanSwitchSpeakerview(Z)V

    .line 1002
    invoke-interface {v1, v2}, Lus/zoom/zrcsdk/IMeetingEventListener;->onUpdateMeetingVideoLayoutStatus(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    goto :goto_0

    :cond_0
    return-void
.end method
