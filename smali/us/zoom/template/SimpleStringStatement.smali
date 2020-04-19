.class Lus/zoom/template/SimpleStringStatement;
.super Ljava/lang/Object;
.source "Template.java"

# interfaces
.implements Lus/zoom/template/IStatement;


# instance fields
.field private mString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p1, p0, Lus/zoom/template/SimpleStringStatement;->mString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public format(Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 279
    iget-object p1, p0, Lus/zoom/template/SimpleStringStatement;->mString:Ljava/lang/String;

    return-object p1
.end method
