.class Lus/zoom/zrp/roomlist/ZRPRoomMapView$1;
.super Ljava/lang/Object;
.source "ZRPRoomMapView.java"

# interfaces
.implements Lus/zoom/zrc/utils/ZRCImageLoader$OnImageLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrp/roomlist/ZRPRoomMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;


# direct methods
.method constructor <init>(Lus/zoom/zrp/roomlist/ZRPRoomMapView;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$1;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoaded(ZLjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 115
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomMapView$1;->this$0:Lus/zoom/zrp/roomlist/ZRPRoomMapView;

    invoke-static {v0, p1, p2, p3}, Lus/zoom/zrp/roomlist/ZRPRoomMapView;->access$000(Lus/zoom/zrp/roomlist/ZRPRoomMapView;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
