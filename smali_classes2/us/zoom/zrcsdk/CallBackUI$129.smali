.class Lus/zoom/zrcsdk/CallBackUI$129;
.super Ljava/lang/Object;
.source "CallBackUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrcsdk/CallBackUI;->onZoomPresenceLoginWithZoom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrcsdk/CallBackUI;

.field final synthetic val$refreshToken:Ljava/lang/String;

.field final synthetic val$roomEmail:Ljava/lang/String;

.field final synthetic val$roomToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2250
    iput-object p1, p0, Lus/zoom/zrcsdk/CallBackUI$129;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    iput-object p2, p0, Lus/zoom/zrcsdk/CallBackUI$129;->val$refreshToken:Ljava/lang/String;

    iput-object p3, p0, Lus/zoom/zrcsdk/CallBackUI$129;->val$roomEmail:Ljava/lang/String;

    iput-object p4, p0, Lus/zoom/zrcsdk/CallBackUI$129;->val$roomToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2253
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI$129;->this$0:Lus/zoom/zrcsdk/CallBackUI;

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

    check-cast v1, Lus/zoom/zrcsdk/ILoginListener;

    .line 2254
    iget-object v2, p0, Lus/zoom/zrcsdk/CallBackUI$129;->val$refreshToken:Ljava/lang/String;

    iget-object v3, p0, Lus/zoom/zrcsdk/CallBackUI$129;->val$roomEmail:Ljava/lang/String;

    iget-object v4, p0, Lus/zoom/zrcsdk/CallBackUI$129;->val$roomToken:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lus/zoom/zrcsdk/ILoginListener;->onZoomPresenceLoginWithZoom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
