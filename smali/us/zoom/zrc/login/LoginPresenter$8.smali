.class Lus/zoom/zrc/login/LoginPresenter$8;
.super Lus/zoom/zrc/base/notification/INotification;
.source "LoginPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginPresenter;->setup(Lus/zoom/zrc/login/LoginContract$IUI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginPresenter;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginPresenter;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lus/zoom/zrc/login/LoginPresenter$8;->this$0:Lus/zoom/zrc/login/LoginPresenter;

    invoke-direct {p0}, Lus/zoom/zrc/base/notification/INotification;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Ljava/lang/Object;)V
    .locals 3

    .line 180
    check-cast p1, Lcom/google/common/collect/ImmutableMap;

    .line 181
    iget-object v0, p0, Lus/zoom/zrc/login/LoginPresenter$8;->this$0:Lus/zoom/zrc/login/LoginPresenter;

    const-string v1, "result"

    invoke-virtual {p1, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "location"

    invoke-virtual {p1, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCLocationTree;

    invoke-static {v0, v1, p1}, Lus/zoom/zrc/login/LoginPresenter;->access$700(Lus/zoom/zrc/login/LoginPresenter;ILus/zoom/zrcsdk/model/ZRCLocationTree;)V

    return-void
.end method
