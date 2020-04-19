.class public Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectedCamerasAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private cameraList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter;->cameraList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 44
    iget-object v0, p0, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter;->cameraList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter;->getItem(I)Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;
    .locals 1

    .line 49
    iget-object v0, p0, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter;->cameraList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x4

    if-nez p2, :cond_1

    .line 61
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lus/zoom/zrcbox/R$layout;->layout_share_camera_item:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 62
    new-instance v1, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter$ViewHolder;

    invoke-direct {v1, p2}, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 63
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, v1, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter$ViewHolder;->scSelectIconIV:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter$ViewHolder;

    .line 71
    :goto_0
    iget-object v2, v1, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter$ViewHolder;->scCamNameTV:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter;->getItem(I)Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getDisplayDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->getCameraSharingStatus()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object v2

    .line 74
    invoke-virtual {p0}, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter;->querySelectedShareCameraPosition()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    .line 76
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isSharing()Z

    move-result v2

    if-eqz v2, :cond_5

    if-ne v3, p1, :cond_3

    .line 78
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 79
    iget-object p1, v1, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter$ViewHolder;->scCamNameTV:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 80
    iget-object p1, v1, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter$ViewHolder;->scSelectIconIV:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 82
    :cond_2
    iget-object p1, v1, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter$ViewHolder;->scSelectIconIV:Landroid/widget/ImageView;

    sget p3, Lus/zoom/zrcbox/R$drawable;->option_selected:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    iget-object p1, v1, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter$ViewHolder;->scCamSelectedTV:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 86
    :cond_3
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 87
    iget-object p1, v1, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter$ViewHolder;->scCamNameTV:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 88
    iget-object p1, v1, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter$ViewHolder;->scSelectIconIV:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 90
    :cond_4
    iget-object p1, v1, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter$ViewHolder;->scSelectIconIV:Landroid/widget/ImageView;

    sget p3, Lus/zoom/zrcbox/R$drawable;->option_normal:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    iget-object p1, v1, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter$ViewHolder;->scCamSelectedTV:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 95
    :cond_5
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 96
    iget-object p1, v1, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter$ViewHolder;->scCamNameTV:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 97
    iget-object p1, v1, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter$ViewHolder;->scSelectIconIV:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 99
    :cond_6
    iget-object p1, v1, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter$ViewHolder;->scSelectIconIV:Landroid/widget/ImageView;

    sget p3, Lus/zoom/zrcbox/R$drawable;->option_normal:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    iget-object p1, v1, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter$ViewHolder;->scCamSelectedTV:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-object p2
.end method

.method public querySelectedShareCameraPosition()I
    .locals 5

    .line 127
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getCameraSharingStatus()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 131
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v2, p0, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter;->cameraList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    .line 133
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 134
    iget-object v0, p0, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter;->cameraList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    :cond_2
    return v1
.end method

.method public refreshCameraList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter;->cameraList:Ljava/util/List;

    .line 39
    invoke-virtual {p0}, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter;->notifyDataSetChanged()V

    return-void
.end method
