.class Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder$2;
.super Ljava/lang/Object;
.source "ZRCTitleBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;


# direct methods
.method constructor <init>(Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder$2;->this$1:Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 212
    iget-object p1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder$2;->this$1:Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    invoke-static {p1}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->access$700(Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
