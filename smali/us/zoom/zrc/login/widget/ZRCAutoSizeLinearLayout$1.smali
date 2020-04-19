.class Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout$1;
.super Ljava/lang/Object;
.source "ZRCAutoSizeLinearLayout.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;->compareListWidth()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout$1;->this$0:Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 80
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/login/widget/ZRCAutoSizeLinearLayout$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 84
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :cond_1
    sub-int/2addr v0, p1

    return v0
.end method
