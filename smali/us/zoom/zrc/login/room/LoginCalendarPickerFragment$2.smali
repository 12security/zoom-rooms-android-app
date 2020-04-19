.class Lus/zoom/zrc/login/room/LoginCalendarPickerFragment$2;
.super Ljava/lang/Object;
.source "LoginCalendarPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment$2;->this$0:Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 113
    iget-object p1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment$2;->this$0:Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;

    invoke-static {p1}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->access$200(Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;)Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment$2;->this$0:Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;

    invoke-static {v0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->access$100(Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;)Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    move-result-object v0

    invoke-interface {p1, v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->onEnterCalendarResource(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)V

    return-void
.end method
