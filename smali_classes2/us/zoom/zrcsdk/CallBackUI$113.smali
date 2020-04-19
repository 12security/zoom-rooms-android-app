.class Lus/zoom/zrcsdk/CallBackUI$113;
.super Ljava/lang/Object;
.source "CallBackUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrcsdk/CallBackUI;->OnSearchBuddyOnWebDidFinish(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrcsdk/CallBackUI;

.field final synthetic val$contactsList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/util/ArrayList;)V
    .locals 0

    .line 2044
    iput-object p1, p0, Lus/zoom/zrcsdk/CallBackUI$113;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    iput-object p2, p0, Lus/zoom/zrcsdk/CallBackUI$113;->val$contactsList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2047
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getZRCSdkContext()Lus/zoom/zrcsdk/ZRCSdkContext;

    move-result-object v0

    new-instance v1, Lus/zoom/zrcsdk/CallBackUI$113$1;

    invoke-direct {v1, p0}, Lus/zoom/zrcsdk/CallBackUI$113$1;-><init>(Lus/zoom/zrcsdk/CallBackUI$113;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/ZRCSdkContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
