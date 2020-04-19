.class Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$18;
.super Lus/zoom/androidlib/util/EventAction;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->onShowLocationPicker(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

.field final synthetic val$parent:Lus/zoom/zrcsdk/model/ZRCLocationTree;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCLocationTree;)V
    .locals 0

    .line 1062
    iput-object p1, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$18;->this$0:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

    iput-object p3, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$18;->val$parent:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    invoke-direct {p0, p2}, Lus/zoom/androidlib/util/EventAction;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 2

    .line 1065
    check-cast p1, Lus/zoom/zrc/login/LoginActivity;

    .line 1066
    iget-object v0, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$18;->val$parent:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    invoke-static {p1, v0}, Lus/zoom/zrc/login/LoginActivity;->access$1500(Lus/zoom/zrc/login/LoginActivity;Lus/zoom/zrcsdk/model/ZRCLocationTree;)Lus/zoom/zrc/login/room/LoginLocationPickerFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lus/zoom/zrc/login/LoginActivity;->access$100(Lus/zoom/zrc/login/LoginActivity;Lus/zoom/zrc/login/LoginBaseFragment;Z)V

    return-void
.end method
