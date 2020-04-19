.class Lus/zoom/zrcsdk/CallBackUI$84;
.super Ljava/lang/Object;
.source "CallBackUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrcsdk/CallBackUI;->onUpdatedWebSettingsNotification(Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrcsdk/CallBackUI;

.field final synthetic val$info:Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;

.field final synthetic val$userProfile:Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;


# direct methods
.method constructor <init>(Lus/zoom/zrcsdk/CallBackUI;Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;)V
    .locals 0

    .line 1689
    iput-object p1, p0, Lus/zoom/zrcsdk/CallBackUI$84;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    iput-object p2, p0, Lus/zoom/zrcsdk/CallBackUI$84;->val$info:Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;

    iput-object p3, p0, Lus/zoom/zrcsdk/CallBackUI$84;->val$userProfile:Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1693
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI$84;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    invoke-static {v0}, Lus/zoom/zrcsdk/CallBackUI;->access$800(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/IWebPullCallBackListener;

    .line 1694
    iget-object v2, p0, Lus/zoom/zrcsdk/CallBackUI$84;->val$info:Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;

    iget-object v3, p0, Lus/zoom/zrcsdk/CallBackUI$84;->val$userProfile:Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;

    invoke-interface {v1, v2, v3}, Lus/zoom/zrcsdk/IWebPullCallBackListener;->onUpdatedWebSettingsNotification(Lus/zoom/zrcsdk/model/ZRCWEBSettingsInfo;Lus/zoom/zrcsdk/model/ZRCWEBUserProfileInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method
