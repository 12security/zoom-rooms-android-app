.class public Lus/zoom/template/Template;
.super Ljava/lang/Object;
.source "Template.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Template"


# instance fields
.field private mStackSize:I

.field private mStatements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lus/zoom/template/IStatement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/template/Template;->mStatements:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lus/zoom/template/Template;->mStackSize:I

    if-eqz p1, :cond_0

    .line 23
    invoke-direct {p0, p1}, Lus/zoom/template/Template;->preParse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-direct {p0, p1}, Lus/zoom/template/Template;->parse(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private parse(Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    .line 62
    :try_start_0
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 65
    :try_start_1
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 67
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/StringReader;->read()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 70
    new-instance v2, Lus/zoom/template/SimpleStringStatement;

    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lus/zoom/template/SimpleStringStatement;-><init>(Ljava/lang/String;)V

    .line 71
    iget-object v3, p0, Lus/zoom/template/Template;->mStatements:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/16 v4, 0x24

    if-ne v2, v4, :cond_4

    .line 74
    invoke-virtual {v1}, Ljava/io/StringReader;->read()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 76
    invoke-virtual {p1, v2}, Ljava/io/StringWriter;->write(I)V

    .line 77
    new-instance v2, Lus/zoom/template/SimpleStringStatement;

    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lus/zoom/template/SimpleStringStatement;-><init>(Ljava/lang/String;)V

    .line 78
    iget-object v3, p0, Lus/zoom/template/Template;->mStatements:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    move-object v0, p1

    goto/16 :goto_2

    :cond_2
    const/16 v5, 0x7b

    if-ne v4, v5, :cond_3

    .line 81
    new-instance v4, Lus/zoom/template/SimpleStringStatement;

    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lus/zoom/template/SimpleStringStatement;-><init>(Ljava/lang/String;)V

    .line 82
    iget-object v5, p0, Lus/zoom/template/Template;->mStatements:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {p1}, Ljava/io/StringWriter;->close()V

    .line 84
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 86
    :try_start_3
    invoke-direct {p0, v1}, Lus/zoom/template/Template;->parseVariableStatement(Ljava/io/StringReader;)Lus/zoom/template/VariableStatement;

    move-result-object p1

    .line 87
    iget-object v5, p0, Lus/zoom/template/Template;->mStatements:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object p1, v4

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object p1, v4

    goto/16 :goto_4

    :catch_0
    move-exception p1

    move-object v0, p1

    move-object p1, v4

    goto :goto_3

    .line 89
    :cond_3
    :try_start_4
    invoke-virtual {p1, v2}, Ljava/io/StringWriter;->write(I)V

    goto :goto_1

    :cond_4
    const/16 v4, 0x3c

    if-ne v2, v4, :cond_6

    const/4 v4, 0x4

    .line 92
    new-array v4, v4, [C

    .line 93
    invoke-virtual {v1, v4}, Ljava/io/StringReader;->read([C)I

    move-result v5

    .line 94
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7, v5}, Ljava/lang/String;-><init>([CII)V

    const-string v4, "#if "

    .line 95
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 96
    new-instance v4, Lus/zoom/template/SimpleStringStatement;

    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lus/zoom/template/SimpleStringStatement;-><init>(Ljava/lang/String;)V

    .line 97
    iget-object v5, p0, Lus/zoom/template/Template;->mStatements:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {p1}, Ljava/io/StringWriter;->close()V

    .line 99
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 101
    :try_start_5
    invoke-direct {p0, v1}, Lus/zoom/template/Template;->parseIfStatement(Ljava/io/StringReader;)Lus/zoom/template/IfStatement;

    move-result-object p1

    .line 102
    iget-object v5, p0, Lus/zoom/template/Template;->mStatements:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object p1, v4

    goto :goto_1

    .line 104
    :cond_5
    :try_start_6
    invoke-virtual {p1, v2}, Ljava/io/StringWriter;->write(I)V

    .line 105
    invoke-virtual {p1, v6}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 108
    :cond_6
    invoke-virtual {p1, v2}, Ljava/io/StringWriter;->write(I)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_1
    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 113
    :goto_2
    :try_start_7
    invoke-virtual {v1}, Ljava/io/StringReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 117
    invoke-static {v0}, Lus/zoom/androidlib/cache/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v2

    move-object p1, v0

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    .line 62
    :goto_3
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v2

    :goto_4
    if-eqz v0, :cond_7

    .line 113
    :try_start_9
    invoke-virtual {v1}, Ljava/io/StringReader;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_5

    :catch_3
    move-exception v1

    :try_start_a
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_7
    invoke-virtual {v1}, Ljava/io/StringReader;->close()V

    :goto_5
    throw v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_6

    :catchall_4
    move-exception p1

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    .line 117
    :goto_6
    invoke-static {p1}, Lus/zoom/androidlib/cache/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 118
    throw v0

    :catch_4
    move-object p1, v0

    .line 117
    :catch_5
    invoke-static {p1}, Lus/zoom/androidlib/cache/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    :goto_7
    return-void
.end method

.method private parseIfStatement(Ljava/io/StringReader;)Lus/zoom/template/IfStatement;
    .locals 10

    const/4 v0, 0x0

    .line 123
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 131
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    const/16 v4, 0x3e

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v4, :cond_1

    .line 135
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 136
    iput v6, p0, Lus/zoom/template/Template;->mStackSize:I

    .line 137
    invoke-direct {p0, p1}, Lus/zoom/template/Template;->readToEndIf(Ljava/io/StringReader;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 138
    array-length v3, p1

    if-le v3, v6, :cond_4

    .line 139
    new-instance v3, Lus/zoom/template/IfStatement;

    new-instance v4, Lus/zoom/template/Template;

    aget-object v5, p1, v5

    invoke-direct {v4, v5}, Lus/zoom/template/Template;-><init>(Ljava/lang/String;)V

    new-instance v5, Lus/zoom/template/Template;

    aget-object p1, p1, v6

    invoke-direct {v5, p1}, Lus/zoom/template/Template;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v2, v4, v5}, Lus/zoom/template/IfStatement;-><init>(Ljava/lang/String;Lus/zoom/template/Template;Lus/zoom/template/Template;)V

    goto :goto_1

    :cond_1
    const/16 v4, 0x3f

    if-ne v2, v4, :cond_3

    const/4 v4, 0x2

    .line 142
    new-array v4, v4, [C

    .line 143
    invoke-virtual {p1, v4}, Ljava/io/StringReader;->read([C)I

    move-result v7

    .line 144
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v4, v5, v7}, Ljava/lang/String;-><init>([CII)V

    const-string v4, "?>"

    .line 145
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 146
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 147
    iput v6, p0, Lus/zoom/template/Template;->mStackSize:I

    .line 148
    invoke-direct {p0, p1}, Lus/zoom/template/Template;->readToEndIf(Ljava/io/StringReader;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 149
    array-length v3, p1

    if-le v3, v6, :cond_4

    .line 150
    new-instance v3, Lus/zoom/template/IfStatement;

    new-instance v4, Lus/zoom/template/Template;

    aget-object v5, p1, v5

    invoke-direct {v4, v5}, Lus/zoom/template/Template;-><init>(Ljava/lang/String;)V

    new-instance v5, Lus/zoom/template/Template;

    aget-object p1, p1, v6

    invoke-direct {v5, p1}, Lus/zoom/template/Template;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v2, v4, v5}, Lus/zoom/template/IfStatement;-><init>(Ljava/lang/String;Lus/zoom/template/Template;Lus/zoom/template/Template;)V

    goto :goto_1

    .line 153
    :cond_2
    invoke-virtual {v1, v2}, Ljava/io/StringWriter;->write(I)V

    .line 154
    invoke-virtual {v1, v8}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual {v1, v2}, Ljava/io/StringWriter;->write(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-ne v2, v3, :cond_0

    :cond_4
    move-object v3, v0

    .line 163
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v3

    .line 133
    :cond_5
    :try_start_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"??>\" or \">\" expected but not found after \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    move-object v2, v0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 123
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    move-object v9, v2

    move-object v2, p1

    move-object p1, v9

    :goto_2
    if-eqz v2, :cond_6

    .line 163
    :try_start_5
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_1
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V

    :goto_3
    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    return-object v0
.end method

.method private parseVariableStatement(Ljava/io/StringReader;)Lus/zoom/template/VariableStatement;
    .locals 6

    const/4 v0, 0x0

    .line 231
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 236
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/16 v4, 0x7d

    if-ne v2, v4, :cond_1

    .line 240
    new-instance p1, Lus/zoom/template/VariableStatement;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lus/zoom/template/VariableStatement;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual {v1, v2}, Ljava/io/StringWriter;->write(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v3, :cond_0

    move-object p1, v0

    .line 248
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    .line 238
    :cond_2
    :try_start_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"}\" expected but not found after \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    move-object v2, v0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 231
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    move-object v5, v2

    move-object v2, p1

    move-object p1, v5

    :goto_1
    if-eqz v2, :cond_3

    .line 248
    :try_start_5
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V

    :goto_2
    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    return-object v0
.end method

.method private preParse(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 29
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v1, 0x0

    .line 30
    :try_start_1
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 34
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    if-eqz v5, :cond_3

    if-nez v4, :cond_1

    .line 37
    invoke-virtual {v2, v6}, Ljava/io/StringWriter;->append(C)Ljava/io/StringWriter;

    .line 39
    :cond_1
    invoke-virtual {v2, v5}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    const-string v4, "<[#|/][^<>]*>"

    .line 41
    invoke-virtual {v5, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_0
    if-nez v5, :cond_0

    const-string v3, "\n"

    .line 49
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 50
    invoke-virtual {v2, v6}, Ljava/io/StringWriter;->append(C)Ljava/io/StringWriter;

    .line 51
    :cond_4
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    :try_start_3
    invoke-virtual {v2}, Ljava/io/StringWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    return-object p1

    :catchall_0
    move-exception p1

    move-object v3, v1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 29
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    move-object v7, v3

    move-object v3, p1

    move-object p1, v7

    :goto_1
    if-eqz v3, :cond_5

    .line 52
    :try_start_6
    invoke-virtual {v2}, Ljava/io/StringWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_7
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Ljava/io/StringWriter;->close()V

    :goto_2
    throw p1
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v1, p1

    .line 29
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_3
    if-eqz v1, :cond_6

    .line 52
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_4

    :catch_3
    move-exception v0

    :try_start_a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :goto_4
    throw p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :catch_4
    const-string p1, ""

    return-object p1
.end method

.method private readToEndIf(Ljava/io/StringReader;)[Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    .line 174
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x2

    .line 175
    :try_start_1
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 179
    :goto_0
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_8

    const/16 v7, 0x3c

    if-ne v5, v7, :cond_6

    const/4 v7, 0x5

    .line 183
    new-array v7, v7, [C

    .line 184
    invoke-virtual {p1, v7}, Ljava/io/StringReader;->read([C)I

    move-result v8

    .line 185
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v7, v3, v8}, Ljava/lang/String;-><init>([CII)V

    const-string v7, "#if "

    .line 186
    invoke-virtual {v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    .line 187
    invoke-virtual {v1, v5}, Ljava/io/StringWriter;->write(I)V

    .line 188
    invoke-virtual {v1, v9}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 189
    iget v7, p0, Lus/zoom/template/Template;->mStackSize:I

    add-int/2addr v7, v8

    iput v7, p0, Lus/zoom/template/Template;->mStackSize:I

    goto :goto_2

    :cond_0
    const-string v7, "/#if>"

    .line 190
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 191
    iget v7, p0, Lus/zoom/template/Template;->mStackSize:I

    if-le v7, v8, :cond_1

    .line 192
    invoke-virtual {v1, v5}, Ljava/io/StringWriter;->write(I)V

    .line 193
    invoke-virtual {v1, v9}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 194
    iget v7, p0, Lus/zoom/template/Template;->mStackSize:I

    sub-int/2addr v7, v8

    iput v7, p0, Lus/zoom/template/Template;->mStackSize:I

    goto :goto_2

    .line 196
    :cond_1
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    invoke-static {v1}, Lus/zoom/androidlib/cache/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    return-object v2

    :cond_2
    :try_start_2
    const-string v7, "#else"

    .line 199
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 200
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v5

    const/16 v7, 0x3e

    if-ne v5, v7, :cond_4

    .line 201
    iget v7, p0, Lus/zoom/template/Template;->mStackSize:I

    if-le v7, v8, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v4, 0x1

    .line 205
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v4

    .line 206
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V

    .line 207
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    move-object v1, v4

    move v4, v7

    goto :goto_2

    .line 202
    :cond_4
    :goto_1
    invoke-virtual {v1, v5}, Ljava/io/StringWriter;->write(I)V

    .line 203
    invoke-virtual {v1, v9}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 210
    :cond_5
    invoke-virtual {v1, v5}, Ljava/io/StringWriter;->write(I)V

    .line 211
    invoke-virtual {v1, v9}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 214
    :cond_6
    invoke-virtual {v1, v5}, Ljava/io/StringWriter;->write(I)V

    :goto_2
    if-eq v5, v6, :cond_7

    goto/16 :goto_0

    .line 218
    :cond_7
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V

    .line 219
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"</#if>\" expected but not found after \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 181
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"<#if>\" expected but not found after \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v1, v0

    .line 223
    :goto_3
    invoke-static {v1}, Lus/zoom/androidlib/cache/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 224
    throw p1

    :catch_0
    move-object v1, v0

    .line 223
    :catch_1
    invoke-static {v1}, Lus/zoom/androidlib/cache/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    return-object v0
.end method


# virtual methods
.method public format(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
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

    .line 256
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 258
    iget-object v1, p0, Lus/zoom/template/Template;->mStatements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/template/IStatement;

    .line 259
    invoke-interface {v2, p1}, Lus/zoom/template/IStatement;->format(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
