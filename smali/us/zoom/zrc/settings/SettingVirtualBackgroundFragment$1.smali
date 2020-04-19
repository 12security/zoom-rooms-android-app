.class Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment$1;
.super Ljava/lang/Object;
.source "SettingVirtualBackgroundFragment.java"

# interfaces
.implements Lus/zoom/zrc/settings/VirtualBackgroundAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment$1;->this$0:Lus/zoom/zrc/settings/SettingVirtualBackgroundFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectVirtualBackground(Lus/zoom/zrcsdk/model/ZRCVirtualBackground;Landroid/widget/ImageView;)V
    .locals 4

    .line 54
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "requestUpdateVirtualBackground, imgId is null!"

    .line 56
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    :cond_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lus/zoom/zrc/utils/ZRCImageLoader$LoadImageFailedTag;

    if-eqz v2, :cond_1

    .line 60
    invoke-static {}, Lus/zoom/zrc/model/VirtualBackgroundHelper;->getDefault()Lus/zoom/zrc/model/VirtualBackgroundHelper;

    move-result-object v2

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVirtualBackground;->getSmall_img_url()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Lus/zoom/zrc/model/VirtualBackgroundHelper;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_1
    const-string p1, "requestUpdateVirtualBackground, image_id=%s"

    const/4 p2, 0x1

    .line 63
    new-array p2, p2, [Ljava/lang/Object;

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lus/zoom/zrcsdk/ConfApp;->requestUpdateVirtualBackground(ZLjava/lang/String;)Z

    return-void
.end method
