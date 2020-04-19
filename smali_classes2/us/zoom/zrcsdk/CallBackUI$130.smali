.class Lus/zoom/zrcsdk/CallBackUI$130;
.super Ljava/lang/Object;
.source "CallBackUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrcsdk/CallBackUI;->onZoomPresenceLoginWithGoogle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrcsdk/CallBackUI;

.field final synthetic val$clientID:Ljava/lang/String;

.field final synthetic val$clientSecret:Ljava/lang/String;

.field final synthetic val$refreshToken:Ljava/lang/String;

.field final synthetic val$roomEmail:Ljava/lang/String;

.field final synthetic val$roomToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2262
    iput-object p1, p0, Lus/zoom/zrcsdk/CallBackUI$130;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    iput-object p2, p0, Lus/zoom/zrcsdk/CallBackUI$130;->val$refreshToken:Ljava/lang/String;

    iput-object p3, p0, Lus/zoom/zrcsdk/CallBackUI$130;->val$roomEmail:Ljava/lang/String;

    iput-object p4, p0, Lus/zoom/zrcsdk/CallBackUI$130;->val$clientID:Ljava/lang/String;

    iput-object p5, p0, Lus/zoom/zrcsdk/CallBackUI$130;->val$clientSecret:Ljava/lang/String;

    iput-object p6, p0, Lus/zoom/zrcsdk/CallBackUI$130;->val$roomToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 2265
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI$130;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    invoke-static {v0}, Lus/zoom/zrcsdk/CallBackUI;->access$000(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;

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

    check-cast v2, Lus/zoom/zrcsdk/ILoginListener;

    .line 2266
    iget-object v3, p0, Lus/zoom/zrcsdk/CallBackUI$130;->val$refreshToken:Ljava/lang/String;

    iget-object v4, p0, Lus/zoom/zrcsdk/CallBackUI$130;->val$roomEmail:Ljava/lang/String;

    iget-object v5, p0, Lus/zoom/zrcsdk/CallBackUI$130;->val$clientID:Ljava/lang/String;

    iget-object v6, p0, Lus/zoom/zrcsdk/CallBackUI$130;->val$clientSecret:Ljava/lang/String;

    iget-object v7, p0, Lus/zoom/zrcsdk/CallBackUI$130;->val$roomToken:Ljava/lang/String;

    invoke-interface/range {v2 .. v7}, Lus/zoom/zrcsdk/ILoginListener;->onZoomPresenceLoginWithGoogle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
