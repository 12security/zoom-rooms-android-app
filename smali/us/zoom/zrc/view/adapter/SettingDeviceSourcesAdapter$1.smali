.class Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter$1;
.super Ljava/lang/Object;
.source "SettingDeviceSourcesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

.field final synthetic val$deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter$1;->this$0:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

    iput-object p2, p0, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter$1;->val$deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 98
    iget-object p1, p0, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter$1;->this$0:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

    invoke-static {p1}, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->access$000(Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;)Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter$OnSeeMoreClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter$1;->this$0:Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;

    invoke-static {p1}, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;->access$000(Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter;)Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter$OnSeeMoreClickListener;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter$1;->val$deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-interface {p1, v0}, Lus/zoom/zrc/view/adapter/SettingDeviceSourcesAdapter$OnSeeMoreClickListener;->onSeeMoreClick(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    :cond_0
    return-void
.end method
