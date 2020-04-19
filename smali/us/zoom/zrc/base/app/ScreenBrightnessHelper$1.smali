.class Lus/zoom/zrc/base/app/ScreenBrightnessHelper$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "ScreenBrightnessHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/base/app/ScreenBrightnessHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/base/app/ScreenBrightnessHelper;


# direct methods
.method constructor <init>(Lus/zoom/zrc/base/app/ScreenBrightnessHelper;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lus/zoom/zrc/base/app/ScreenBrightnessHelper$1;->this$0:Lus/zoom/zrc/base/app/ScreenBrightnessHelper;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 34
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->operationTimeStatus:I

    if-ne p1, p2, :cond_0

    .line 35
    iget-object p1, p0, Lus/zoom/zrc/base/app/ScreenBrightnessHelper$1;->this$0:Lus/zoom/zrc/base/app/ScreenBrightnessHelper;

    invoke-static {p1}, Lus/zoom/zrc/base/app/ScreenBrightnessHelper;->access$000(Lus/zoom/zrc/base/app/ScreenBrightnessHelper;)V

    :cond_0
    return-void
.end method
