.class Lus/zoom/zrc/utils/ZRCImageLoader$1;
.super Ljava/lang/Object;
.source "ZRCImageLoader.java"

# interfaces
.implements Lus/zoom/zrc/utils/ZRCImageLoader$IDrawableFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/utils/ZRCImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/utils/ZRCImageLoader;


# direct methods
.method constructor <init>(Lus/zoom/zrc/utils/ZRCImageLoader;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lus/zoom/zrc/utils/ZRCImageLoader$1;->this$0:Lus/zoom/zrc/utils/ZRCImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDefaultDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public createDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 71
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    .line 72
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method
