.class Lus/zoom/zrcsdk/CallBackUI$117;
.super Ljava/lang/Object;
.source "CallBackUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrcsdk/CallBackUI;->onNamedPresetsOfCurrentCameraChangedTo(Ljava/util/HashMap;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrcsdk/CallBackUI;

.field final synthetic val$default_camera_preset_index:I

.field final synthetic val$numberOfPresets:I

.field final synthetic val$presets:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/util/HashMap;II)V
    .locals 0

    .line 2106
    iput-object p1, p0, Lus/zoom/zrcsdk/CallBackUI$117;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    iput-object p2, p0, Lus/zoom/zrcsdk/CallBackUI$117;->val$presets:Ljava/util/HashMap;

    iput p3, p0, Lus/zoom/zrcsdk/CallBackUI$117;->val$numberOfPresets:I

    iput p4, p0, Lus/zoom/zrcsdk/CallBackUI$117;->val$default_camera_preset_index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2109
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI$117;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    invoke-static {v0}, Lus/zoom/zrcsdk/CallBackUI;->access$500(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/CameraControlListener;

    .line 2110
    iget-object v2, p0, Lus/zoom/zrcsdk/CallBackUI$117;->val$presets:Ljava/util/HashMap;

    iget v3, p0, Lus/zoom/zrcsdk/CallBackUI$117;->val$numberOfPresets:I

    iget v4, p0, Lus/zoom/zrcsdk/CallBackUI$117;->val$default_camera_preset_index:I

    invoke-interface {v1, v2, v3, v4}, Lus/zoom/zrcsdk/CameraControlListener;->onNamedPresetsOfCurrentCameraChangedTo(Ljava/util/Map;II)V

    goto :goto_0

    :cond_0
    return-void
.end method
