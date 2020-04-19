.class final Lus/zoom/zrc/control_system/ControlSystemViewGenerator$1;
.super Ljava/lang/Object;
.source "ControlSystemViewGenerator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/control_system/ControlSystemViewGenerator;->buildLineDisconnected(Lus/zoom/zrc/control_system/ControlSystemContext;Ljava/lang/String;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$deviceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lus/zoom/zrc/control_system/ControlSystemViewGenerator$1;->val$deviceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 179
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemViewGenerator$1;->val$deviceId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v1}, Lus/zoom/zrc/model/Model;->requestConnectZRCSDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
