.class public final Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ComDeviceSourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# instance fields
.field public comId:Landroid/widget/TextView;

.field public friendlyName:Landroid/widget/TextView;

.field final synthetic this$0:Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;

.field public tick:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter$ViewHolder;->this$0:Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
