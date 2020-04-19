.class Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment$2;
.super Ljava/lang/Object;
.source "LoginEnterCalendarResourceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment$2;->this$0:Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 79
    iget-object p1, p0, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment$2;->this$0:Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;

    invoke-static {p1}, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->access$100(Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;)Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->getLocationHelper()Lus/zoom/zrc/login/LoginLocationHelper;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginLocationHelper;->hasLocationToDisplay()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    iget-object p1, p0, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment$2;->this$0:Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;

    invoke-static {p1}, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->access$200(Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;)Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->onShowLocationPicker(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment$2;->this$0:Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;

    invoke-static {p1}, Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;->access$300(Lus/zoom/zrc/login/room/LoginEnterCalendarResourceFragment;)Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$INavigator;->onSetRoomPassCode()V

    :goto_0
    return-void
.end method
