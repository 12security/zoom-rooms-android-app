.class Lus/zoom/zrc/view/adapter/SwitchCameraAdapter$1;
.super Ljava/lang/Object;
.source "SwitchCameraAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/adapter/SwitchCameraAdapter;->onBindViewHolder(Lus/zoom/zrc/view/adapter/SwitchCameraAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/adapter/SwitchCameraAdapter;

.field final synthetic val$mediaDeviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/adapter/SwitchCameraAdapter;Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/SwitchCameraAdapter$1;->this$0:Lus/zoom/zrc/view/adapter/SwitchCameraAdapter;

    iput-object p2, p0, Lus/zoom/zrc/view/adapter/SwitchCameraAdapter$1;->val$mediaDeviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 73
    iget-object p1, p0, Lus/zoom/zrc/view/adapter/SwitchCameraAdapter$1;->this$0:Lus/zoom/zrc/view/adapter/SwitchCameraAdapter;

    invoke-static {p1}, Lus/zoom/zrc/view/adapter/SwitchCameraAdapter;->access$000(Lus/zoom/zrc/view/adapter/SwitchCameraAdapter;)Lus/zoom/zrc/view/adapter/SwitchCameraAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p0, Lus/zoom/zrc/view/adapter/SwitchCameraAdapter$1;->this$0:Lus/zoom/zrc/view/adapter/SwitchCameraAdapter;

    invoke-static {p1}, Lus/zoom/zrc/view/adapter/SwitchCameraAdapter;->access$000(Lus/zoom/zrc/view/adapter/SwitchCameraAdapter;)Lus/zoom/zrc/view/adapter/SwitchCameraAdapter$OnItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/adapter/SwitchCameraAdapter$1;->val$mediaDeviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-interface {p1, v0}, Lus/zoom/zrc/view/adapter/SwitchCameraAdapter$OnItemClickListener;->onItemClick(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    :cond_0
    return-void
.end method
