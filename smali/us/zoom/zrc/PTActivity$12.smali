.class Lus/zoom/zrc/PTActivity$12;
.super Lus/zoom/androidlib/util/EventAction;
.source "PTActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/PTActivity;->LoginInfoPullBack(Lus/zoom/zrcsdk/model/LoginInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/PTActivity;

.field final synthetic val$loginInfo:Lus/zoom/zrcsdk/model/LoginInfo;


# direct methods
.method constructor <init>(Lus/zoom/zrc/PTActivity;Ljava/lang/String;Lus/zoom/zrcsdk/model/LoginInfo;)V
    .locals 0

    .line 1113
    iput-object p1, p0, Lus/zoom/zrc/PTActivity$12;->this$0:Lus/zoom/zrc/PTActivity;

    iput-object p3, p0, Lus/zoom/zrc/PTActivity$12;->val$loginInfo:Lus/zoom/zrcsdk/model/LoginInfo;

    invoke-direct {p0, p2}, Lus/zoom/androidlib/util/EventAction;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 1

    .line 1116
    check-cast p1, Lus/zoom/zrc/PTActivity;

    iget-object v0, p0, Lus/zoom/zrc/PTActivity$12;->val$loginInfo:Lus/zoom/zrcsdk/model/LoginInfo;

    invoke-static {p1, v0}, Lus/zoom/zrc/PTActivity;->access$900(Lus/zoom/zrc/PTActivity;Lus/zoom/zrcsdk/model/LoginInfo;)V

    return-void
.end method
