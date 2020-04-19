.class public Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;
.super Ljava/lang/Object;
.source "ZRCParticipantContextMenuManager.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZRCParticipantContextMenu"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;",
        ">;"
    }
.end annotation


# instance fields
.field private menu:Ljava/lang/String;

.field private priority:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 281
    check-cast p1, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;->compareTo(Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;)I
    .locals 1
    .param p1    # Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 299
    iget v0, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;->priority:I

    iget p1, p1, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;->priority:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public getMenu()Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;->menu:Ljava/lang/String;

    return-object v0
.end method

.method public setMenu(Ljava/lang/String;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;->menu:Ljava/lang/String;

    return-void
.end method

.method setPriority(I)V
    .locals 0

    .line 294
    iput p1, p0, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager$ZRCParticipantContextMenu;->priority:I

    return-void
.end method
