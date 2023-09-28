# classes.dex

.class public Landroid/filterfw/io/TextGraphReader;
.super Landroid/filterfw/io/GraphReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterfw/io/TextGraphReader$ConnectCommand;,
        Landroid/filterfw/io/TextGraphReader$InitFilterCommand;,
        Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;,
        Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;,
        Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;,
        Landroid/filterfw/io/TextGraphReader$Command;
    }
.end annotation


# instance fields
.field private mBoundReferences:Landroid/filterfw/core/KeyValueMap;

.field private mCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/filterfw/io/TextGraphReader$Command;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentFilter:Landroid/filterfw/core/Filter;

.field private mCurrentGraph:Landroid/filterfw/core/FilterGraph;

.field private mFactory:Landroid/filterfw/core/FilterFactory;

.field private mSettings:Landroid/filterfw/core/KeyValueMap;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentFilter(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/Filter;
    .registers 1

    iget-object p0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentFilter:Landroid/filterfw/core/Filter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentGraph(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterGraph;
    .registers 1

    iget-object p0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFactory(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterFactory;
    .registers 1

    iget-object p0, p0, Landroid/filterfw/io/TextGraphReader;->mFactory:Landroid/filterfw/core/FilterFactory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentFilter(Landroid/filterfw/io/TextGraphReader;Landroid/filterfw/core/Filter;)V
    .registers 2

    iput-object p1, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentFilter:Landroid/filterfw/core/Filter;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/filterfw/io/GraphReader;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    return-void
.end method

.method private applySettings()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0}, Landroid/filterfw/core/KeyValueMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v2, v1}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "autoBranch"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    const-class v3, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Landroid/filterfw/io/TextGraphReader;->expectSettingClass(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string/jumbo v3, "synced"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->setAutoBranchMode(I)V

    goto :goto_91

    :cond_39
    const-string/jumbo v3, "unsynced"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->setAutoBranchMode(I)V

    goto :goto_91

    :cond_49
    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->setAutoBranchMode(I)V

    goto :goto_91

    :cond_59
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown autobranch setting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_78
    const-string v3, "discardUnconnectedOutputs"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    const-class v3, Ljava/lang/Boolean;

    invoke-direct {p0, v1, v2, v3}, Landroid/filterfw/io/TextGraphReader;->expectSettingClass(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->setDiscardUnconnectedOutputs(Z)V

    :goto_91
    goto/16 :goto_a

    :cond_93
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown @setting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b2
    return-void
.end method

.method private bindExternal(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v1, p1, v0}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    return-void

    :cond_15
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown external variable \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'! You must add a reference to this external in the host program using addReference(...)!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkReferences()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0}, Landroid/filterfw/core/KeyValueMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v2, v1}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_a

    :cond_1f
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Host program specifies reference to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', which is not declared @external in graph file!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    return-void
.end method

.method private executeCommands()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/io/TextGraphReader$Command;

    invoke-interface {v1, p0}, Landroid/filterfw/io/TextGraphReader$Command;->execute(Landroid/filterfw/io/TextGraphReader;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private expectSettingClass(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p3, :cond_7

    return-void

    :cond_7
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must have a value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but found a value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseString(Ljava/lang/String;)V
    .registers 49
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    move-object/from16 v6, p0

    const-string v0, "@[a-zA-Z]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const-string v0, "\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    const-string v0, "\\{"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    const-string v0, "(\\s+|//[^\\n]*\\n)+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    const-string v0, "[a-zA-Z\\.]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    const-string v0, "[a-zA-Z\\./:]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    const-string v0, "\\[[a-zA-Z0-9\\-_]+\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    const-string v14, "=>"

    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    const-string v5, ";"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    const-string v0, "[a-zA-Z0-9\\-_]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x2

    const/16 v19, 0x3

    const/16 v20, 0x4

    const/16 v21, 0x5

    const/16 v22, 0x6

    const/16 v23, 0x7

    const/16 v24, 0x8

    const/16 v25, 0x9

    const/16 v26, 0xa

    const/16 v27, 0xb

    const/16 v28, 0xc

    const/16 v29, 0xd

    const/16 v30, 0xe

    const/16 v31, 0xf

    const/16 v32, 0x10

    const/4 v0, 0x0

    new-instance v1, Landroid/filterfw/io/PatternScanner;

    move-object/from16 v2, p1

    invoke-direct {v1, v2, v10}, Landroid/filterfw/io/PatternScanner;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v46, v33

    move-object/from16 v33, v10

    move-object/from16 v10, v46

    :goto_78
    invoke-virtual {v1}, Landroid/filterfw/io/PatternScanner;->atEnd()Z

    move-result v38

    if-nez v38, :cond_389

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_3a8

    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object v4, v7

    move-object v2, v11

    move-object v7, v1

    move-object v1, v12

    move-object/from16 v46, v10

    move-object v10, v3

    move-object/from16 v3, v46

    goto/16 :goto_378

    :pswitch_93  #0x10
    invoke-virtual {v1, v4, v5}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object v4, v7

    move-object v2, v11

    move-object v7, v1

    move-object v1, v12

    move-object/from16 v46, v10

    move-object v10, v3

    move-object/from16 v3, v46

    goto/16 :goto_378

    :pswitch_a6  #0xf
    invoke-direct {v6, v1, v4}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v2

    move/from16 v38, v0

    iget-object v0, v6, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, v2}, Landroid/filterfw/core/KeyValueMap;->putAll(Ljava/util/Map;)V

    const/16 v0, 0x10

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object v4, v7

    move-object v2, v11

    move-object v7, v1

    move-object v1, v12

    move-object/from16 v46, v10

    move-object v10, v3

    move-object/from16 v3, v46

    goto/16 :goto_378

    :pswitch_c2  #0xe
    move/from16 v38, v0

    const-string v0, "<external-identifier>"

    invoke-virtual {v1, v3, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/filterfw/io/TextGraphReader;->bindExternal(Ljava/lang/String;)V

    const/16 v2, 0x10

    move v0, v2

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object v4, v7

    move-object v2, v11

    move-object v7, v1

    move-object v1, v12

    move-object/from16 v46, v10

    move-object v10, v3

    move-object/from16 v3, v46

    goto/16 :goto_378

    :pswitch_df  #0xd
    move/from16 v38, v0

    invoke-direct {v6, v1, v4}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v0

    iget-object v2, v6, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v2, v0}, Landroid/filterfw/core/KeyValueMap;->putAll(Ljava/util/Map;)V

    const/16 v2, 0x10

    move v0, v2

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object v4, v7

    move-object v2, v11

    move-object v7, v1

    move-object v1, v12

    move-object/from16 v46, v10

    move-object v10, v3

    move-object/from16 v3, v46

    goto/16 :goto_378

    :pswitch_fc  #0xc
    move/from16 v38, v0

    const-string v0, "[<target-port-name>]"

    invoke-virtual {v1, v13, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v39

    move-object/from16 v40, v1

    add-int/lit8 v1, v39, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v37

    iget-object v2, v6, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v1, Landroid/filterfw/io/TextGraphReader$ConnectCommand;

    move/from16 v41, v38

    move-object/from16 v38, v0

    move-object v0, v1

    move-object/from16 v39, v7

    move-object/from16 v7, v40

    move-object/from16 v40, v11

    move-object v11, v1

    move-object/from16 v1, p0

    move-object/from16 v42, v12

    move-object v12, v2

    move-object/from16 v2, v34

    move-object/from16 v43, v10

    move-object v10, v3

    move-object/from16 v3, v35

    move-object/from16 v44, v4

    move-object/from16 v4, v36

    move-object/from16 v45, v5

    move-object/from16 v5, v37

    invoke-direct/range {v0 .. v5}, Landroid/filterfw/io/TextGraphReader$ConnectCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x10

    move-object/from16 v4, v39

    move-object/from16 v2, v40

    move-object/from16 v1, v42

    move-object/from16 v3, v43

    goto/16 :goto_378

    :pswitch_146  #0xb
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object/from16 v43, v10

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object v7, v1

    move-object v10, v3

    const-string v0, "<target-filter-name>"

    invoke-virtual {v7, v10, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    move-object/from16 v36, v0

    move v0, v1

    move-object/from16 v4, v39

    move-object/from16 v2, v40

    move-object/from16 v1, v42

    move-object/from16 v3, v43

    goto/16 :goto_378

    :pswitch_16b  #0xa
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object/from16 v43, v10

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object v7, v1

    move-object v10, v3

    invoke-virtual {v7, v15, v14}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    const/16 v0, 0xb

    move-object/from16 v4, v39

    move-object/from16 v2, v40

    move-object/from16 v1, v42

    move-object/from16 v3, v43

    goto/16 :goto_378

    :pswitch_18a  #0x9
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object/from16 v43, v10

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object v7, v1

    move-object v10, v3

    const-string v0, "[<source-port-name>]"

    invoke-virtual {v7, v13, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    move-object/from16 v35, v1

    move v0, v2

    move-object/from16 v4, v39

    move-object/from16 v2, v40

    move-object/from16 v1, v42

    move-object/from16 v3, v43

    goto/16 :goto_378

    :pswitch_1b8  #0x8
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object/from16 v43, v10

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object v7, v1

    move-object v10, v3

    const-string v0, "<source-filter-name>"

    invoke-virtual {v7, v10, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    move-object/from16 v34, v0

    move v0, v1

    move-object/from16 v4, v39

    move-object/from16 v2, v40

    move-object/from16 v1, v42

    move-object/from16 v3, v43

    goto/16 :goto_378

    :pswitch_1dd  #0x7
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object/from16 v43, v10

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object v7, v1

    move-object v10, v3

    const-string/jumbo v0, "}"

    invoke-virtual {v7, v8, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    move-object/from16 v4, v39

    move-object/from16 v2, v40

    move-object/from16 v1, v42

    move-object/from16 v3, v43

    goto/16 :goto_378

    :pswitch_1fe  #0x6
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object/from16 v43, v10

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object v7, v1

    move-object v10, v3

    invoke-direct {v6, v7, v8}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v0

    iget-object v1, v6, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v2, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;

    invoke-direct {v2, v6, v0}, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Landroid/filterfw/core/KeyValueMap;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x7

    move v0, v1

    move-object/from16 v4, v39

    move-object/from16 v2, v40

    move-object/from16 v1, v42

    move-object/from16 v3, v43

    goto/16 :goto_378

    :pswitch_228  #0x5
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object/from16 v43, v10

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object v7, v1

    move-object v10, v3

    const-string/jumbo v0, "{"

    invoke-virtual {v7, v9, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x6

    move-object/from16 v4, v39

    move-object/from16 v2, v40

    move-object/from16 v1, v42

    move-object/from16 v3, v43

    goto/16 :goto_378

    :pswitch_249  #0x4
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object/from16 v43, v10

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object v7, v1

    move-object v10, v3

    const-string v0, "<filter-name>"

    invoke-virtual {v7, v10, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v6, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v2, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;

    move-object/from16 v3, v43

    invoke-direct {v2, v6, v3, v0}, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x5

    move v0, v1

    move-object/from16 v4, v39

    move-object/from16 v2, v40

    move-object/from16 v1, v42

    goto/16 :goto_378

    :pswitch_275  #0x3
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object v7, v1

    move-object/from16 v46, v10

    move-object v10, v3

    move-object/from16 v3, v46

    const-string v0, "<class-name>"

    invoke-virtual {v7, v10, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    move-object v3, v0

    move v0, v1

    move-object/from16 v4, v39

    move-object/from16 v2, v40

    move-object/from16 v1, v42

    goto/16 :goto_378

    :pswitch_298  #0x2
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object v7, v1

    move-object/from16 v46, v10

    move-object v10, v3

    move-object/from16 v3, v46

    const-string v0, "<library-name>"

    move-object/from16 v1, v42

    invoke-virtual {v7, v1, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v6, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v4, Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;

    invoke-direct {v4, v6, v0}, Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x10

    move v0, v2

    move-object/from16 v4, v39

    move-object/from16 v2, v40

    goto/16 :goto_378

    :pswitch_2c5  #0x1
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object/from16 v40, v11

    move-object v7, v1

    move-object v1, v12

    move-object/from16 v46, v10

    move-object v10, v3

    move-object/from16 v3, v46

    const-string v0, "<package-name>"

    move-object/from16 v2, v40

    invoke-virtual {v7, v2, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v6, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v5, Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;

    invoke-direct {v5, v6, v0}, Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x10

    move v0, v4

    move-object/from16 v4, v39

    goto/16 :goto_378

    :pswitch_2ef  #0x0
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object v2, v11

    move-object v7, v1

    move-object v1, v12

    move-object/from16 v46, v10

    move-object v10, v3

    move-object/from16 v3, v46

    const-string v0, "<command>"

    move-object/from16 v4, v39

    invoke-virtual {v7, v4, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "@import"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_313

    const/4 v5, 0x1

    move v0, v5

    goto/16 :goto_378

    :cond_313
    const-string v5, "@library"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31e

    const/4 v5, 0x2

    move v0, v5

    goto :goto_378

    :cond_31e
    const-string v5, "@filter"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_329

    const/4 v5, 0x3

    move v0, v5

    goto :goto_378

    :cond_329
    const-string v5, "@connect"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_335

    const/16 v5, 0x8

    move v0, v5

    goto :goto_378

    :cond_335
    const-string v5, "@set"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_341

    const/16 v5, 0xd

    move v0, v5

    goto :goto_378

    :cond_341
    const-string v5, "@external"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34d

    const/16 v5, 0xe

    move v0, v5

    goto :goto_378

    :cond_34d
    const-string v5, "@setting"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_359

    const/16 v5, 0xf

    move v0, v5

    goto :goto_378

    :cond_359
    new-instance v5, Landroid/filterfw/io/GraphIOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown command \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v5

    :goto_378
    move-object v12, v1

    move-object v11, v2

    move-object v1, v7

    move-object/from16 v5, v45

    move-object/from16 v2, p1

    move-object v7, v4

    move-object/from16 v4, v44

    move-object/from16 v46, v10

    move-object v10, v3

    move-object/from16 v3, v46

    goto/16 :goto_78

    :cond_389
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object v4, v7

    move-object v2, v11

    move-object v7, v1

    move-object v1, v12

    move-object/from16 v46, v10

    move-object v10, v3

    move-object/from16 v3, v46

    const/16 v0, 0x10

    move/from16 v5, v41

    if-eq v5, v0, :cond_3a7

    if-nez v5, :cond_39f

    goto :goto_3a7

    :cond_39f
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    const-string v11, "Unexpected end of input!"

    invoke-direct {v0, v11}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a7
    :goto_3a7
    return-void

    :pswitch_data_3a8
    .packed-switch 0x0
        :pswitch_2ef  #00000000
        :pswitch_2c5  #00000001
        :pswitch_298  #00000002
        :pswitch_275  #00000003
        :pswitch_249  #00000004
        :pswitch_228  #00000005
        :pswitch_1fe  #00000006
        :pswitch_1dd  #00000007
        :pswitch_1b8  #00000008
        :pswitch_18a  #00000009
        :pswitch_16b  #0000000a
        :pswitch_146  #0000000b
        :pswitch_fc  #0000000c
        :pswitch_df  #0000000d
        :pswitch_c2  #0000000e
        :pswitch_a6  #0000000f
        :pswitch_93  #00000010
    .end packed-switch
.end method

.method private readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const-string v5, "="

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    const-string v7, ";"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    const-string v9, "[a-zA-Z]+[a-zA-Z0-9]*"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    const-string v10, "\'[^\']*\'|\\\"[^\\\"]*\\\""

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    const-string v11, "[0-9]+"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    const-string v12, "[0-9]*\\.[0-9]+f?"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    const-string v13, "\\$[a-zA-Z]+[a-zA-Z0-9]"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    const-string/jumbo v14, "true|false"

    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    const/4 v15, 0x0

    new-instance v16, Landroid/filterfw/core/KeyValueMap;

    invoke-direct/range {v16 .. v16}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    move-object/from16 v17, v16

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v23, v16

    move/from16 v16, v1

    move-object/from16 v1, v23

    :goto_49
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/io/PatternScanner;->atEnd()Z

    move-result v19

    if-nez v19, :cond_171

    if-eqz p2, :cond_62

    invoke-virtual/range {p1 .. p2}, Landroid/filterfw/io/PatternScanner;->peek(Ljava/util/regex/Pattern;)Z

    move-result v19

    if-nez v19, :cond_58

    goto :goto_62

    :cond_58
    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v19, v4

    move-object/from16 v3, v17

    goto/16 :goto_179

    :cond_62
    :goto_62
    packed-switch v15, :pswitch_data_1a4

    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v19, v4

    move-object/from16 v3, v17

    move-object/from16 v17, v7

    goto/16 :goto_165

    :pswitch_71  #0x3
    invoke-virtual {v0, v8, v7}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    const/4 v15, 0x0

    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v19, v4

    move-object/from16 v3, v17

    move-object/from16 v17, v7

    goto/16 :goto_165

    :pswitch_81  #0x2
    invoke-virtual {v0, v10}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v18, v19

    move/from16 v20, v2

    const/4 v2, 0x1

    if-eqz v19, :cond_a5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v21, v3

    add-int/lit8 v3, v19, -0x1

    move/from16 v19, v4

    move-object/from16 v4, v18

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v17

    invoke-virtual {v3, v1, v2}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v7

    goto/16 :goto_134

    :cond_a5
    move/from16 v21, v3

    move/from16 v19, v4

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    invoke-virtual {v0, v13}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v4, v17

    if-eqz v17, :cond_f5

    move-object/from16 v17, v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v7, p0

    move-object/from16 v18, v4

    iget-object v4, v7, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    if-eqz v4, :cond_cc

    invoke-virtual {v4, v2}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_cd

    :cond_cc
    const/4 v4, 0x0

    :goto_cd
    nop

    if-eqz v4, :cond_d4

    invoke-virtual {v3, v1, v4}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_134

    :cond_d4
    new-instance v5, Landroid/filterfw/io/GraphIOException;

    move-object/from16 v22, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown object reference to \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\'!"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_f5
    move-object/from16 v18, v4

    move-object/from16 v17, v7

    invoke-virtual {v0, v14}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v2

    if-eqz v2, :cond_10d

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_134

    :cond_10d
    invoke-virtual {v0, v12}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v2

    if-eqz v2, :cond_121

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_134

    :cond_121
    invoke-virtual {v0, v11}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v2

    if-eqz v2, :cond_137

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_134
    const/4 v2, 0x3

    move v15, v2

    goto :goto_165

    :cond_137
    new-instance v2, Landroid/filterfw/io/GraphIOException;

    const-string v4, "<value>"

    invoke-virtual {v0, v4}, Landroid/filterfw/io/PatternScanner;->unexpectedTokenMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_143  #0x1
    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v19, v4

    move-object/from16 v3, v17

    move-object/from16 v17, v7

    invoke-virtual {v0, v6, v5}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x2

    move v15, v2

    goto :goto_165

    :pswitch_153  #0x0
    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v19, v4

    move-object/from16 v3, v17

    move-object/from16 v17, v7

    const-string v2, "<identifier>"

    invoke-virtual {v0, v9, v2}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    move v15, v2

    :goto_165
    move-object/from16 v7, v17

    move/from16 v4, v19

    move/from16 v2, v20

    move-object/from16 v17, v3

    move/from16 v3, v21

    goto/16 :goto_49

    :cond_171
    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v19, v4

    move-object/from16 v3, v17

    :goto_179
    if-eqz v15, :cond_1a2

    const/4 v2, 0x3

    if-ne v15, v2, :cond_17f

    goto :goto_1a2

    :cond_17f
    new-instance v2, Landroid/filterfw/io/GraphIOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected end of assignments on line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/io/PatternScanner;->lineNo()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1a2
    :goto_1a2
    return-object v3

    nop

    :pswitch_data_1a4
    .packed-switch 0x0
        :pswitch_153  #00000000
        :pswitch_143  #00000001
        :pswitch_81  #00000002
        :pswitch_71  #00000003
    .end packed-switch
.end method

.method private reset()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentFilter:Landroid/filterfw/core/Filter;

    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    new-instance v0, Landroid/filterfw/core/FilterFactory;

    invoke-direct {v0}, Landroid/filterfw/core/FilterFactory;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mFactory:Landroid/filterfw/core/FilterFactory;

    return-void
.end method


# virtual methods
.method public readGraphString(Ljava/lang/String;)Landroid/filterfw/core/FilterGraph;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    new-instance v0, Landroid/filterfw/core/FilterGraph;

    invoke-direct {v0}, Landroid/filterfw/core/FilterGraph;-><init>()V

    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->reset()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    invoke-direct {p0, p1}, Landroid/filterfw/io/TextGraphReader;->parseString(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->applySettings()V

    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->executeCommands()V

    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->reset()V

    return-object v0
.end method

.method public readKeyValueAssignments(Ljava/lang/String;)Landroid/filterfw/core/KeyValueMap;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    new-instance v1, Landroid/filterfw/io/PatternScanner;

    invoke-direct {v1, p1, v0}, Landroid/filterfw/io/PatternScanner;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v2

    return-object v2
.end method
