.class Lus/zoom/zrcsdk/CallBackUI$193;
.super Ljava/lang/Object;
.source "CallBackUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrcsdk/CallBackUI;->onShowUpcomingMeetingAlertResult(ILjava/lang/String;ZLjava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrcsdk/CallBackUI;

.field final synthetic val$isDelayed:Z

.field final synthetic val$requestId:Ljava/lang/String;

.field final synthetic val$result:I

.field final synthetic val$voiceCommandPrompt:Ljava/lang/String;

.field final synthetic val$zrcMeetingListItem:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;


# direct methods
.method constructor <init>(Lus/zoom/zrcsdk/CallBackUI;ILjava/lang/String;ZLjava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V
    .locals 0

    .line 3125
    iput-object p1, p0, Lus/zoom/zrcsdk/CallBackUI$193;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    iput p2, p0, Lus/zoom/zrcsdk/CallBackUI$193;->val$result:I

    iput-object p3, p0, Lus/zoom/zrcsdk/CallBackUI$193;->val$requestId:Ljava/lang/String;

    iput-boolean p4, p0, Lus/zoom/zrcsdk/CallBackUI$193;->val$isDelayed:Z

    iput-object p5, p0, Lus/zoom/zrcsdk/CallBackUI$193;->val$voiceCommandPrompt:Ljava/lang/String;

    iput-object p6, p0, Lus/zoom/zrcsdk/CallBackUI$193;->val$zrcMeetingListItem:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 3128
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI$193;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    invoke-static {v0}, Lus/zoom/zrcsdk/CallBackUI;->access$100(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lus/zoom/zrcsdk/IPtEventListener;

    .line 3129
    iget v3, p0, Lus/zoom/zrcsdk/CallBackUI$193;->val$result:I

    iget-object v4, p0, Lus/zoom/zrcsdk/CallBackUI$193;->val$requestId:Ljava/lang/String;

    iget-boolean v5, p0, Lus/zoom/zrcsdk/CallBackUI$193;->val$isDelayed:Z

    iget-object v6, p0, Lus/zoom/zrcsdk/CallBackUI$193;->val$voiceCommandPrompt:Ljava/lang/String;

    iget-object v7, p0, Lus/zoom/zrcsdk/CallBackUI$193;->val$zrcMeetingListItem:Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    invoke-interface/range {v2 .. v7}, Lus/zoom/zrcsdk/IPtEventListener;->onShowUpcomingMeetingAlertResult(ILjava/lang/String;ZLjava/lang/String;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    goto :goto_0

    :cond_0
    return-void
.end method
