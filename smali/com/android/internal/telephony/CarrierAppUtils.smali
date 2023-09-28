# classes4.dex

.class public final Lcom/android/internal/telephony/CarrierAppUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CarrierAppUtils"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized disableCarrierAppsUntilPrivileged(Ljava/lang/String;ILandroid/content/Context;)V
    .registers 12

    const-class v0, Lcom/android/internal/telephony/CarrierAppUtils;

    monitor-enter v0

    :try_start_3
    const-class v1, Landroid/os/SystemConfigManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemConfigManager;

    nop

    invoke-virtual {v1}, Landroid/os/SystemConfigManager;->getDisabledUntilUsedPreinstalledCarrierApps()Ljava/util/Set;

    move-result-object v6

    nop

    invoke-virtual {v1}, Landroid/os/SystemConfigManager;->getDisabledUntilUsedPreinstalledCarrierAssociatedAppEntries()Ljava/util/Map;

    move-result-object v7

    invoke-static {p2, p1}, Lcom/android/internal/telephony/CarrierAppUtils;->getContentResolverForUser(Landroid/content/Context;I)Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v3, 0x0

    move-object v2, p0

    move v5, p1

    move-object v8, p2

    invoke-static/range {v2 .. v8}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;ILjava/util/Set;Ljava/util/Map;Landroid/content/Context;)V
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_22

    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/telephony/TelephonyManager;ILandroid/content/Context;)V
    .registers 13

    const-class v0, Lcom/android/internal/telephony/CarrierAppUtils;

    monitor-enter v0

    :try_start_3
    const-class v1, Landroid/os/SystemConfigManager;

    invoke-virtual {p3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemConfigManager;

    nop

    invoke-virtual {v1}, Landroid/os/SystemConfigManager;->getDisabledUntilUsedPreinstalledCarrierApps()Ljava/util/Set;

    move-result-object v6

    nop

    invoke-virtual {v1}, Landroid/os/SystemConfigManager;->getDisabledUntilUsedPreinstalledCarrierAssociatedAppEntries()Ljava/util/Map;

    move-result-object v7

    invoke-static {p3, p2}, Lcom/android/internal/telephony/CarrierAppUtils;->getContentResolverForUser(Landroid/content/Context;I)Landroid/content/ContentResolver;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move-object v8, p3

    invoke-static/range {v2 .. v8}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;ILjava/util/Set;Ljava/util/Map;Landroid/content/Context;)V
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_22

    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;ILjava/util/Set;Ljava/util/Map;Landroid/content/Context;)V
    .registers 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/telephony/TelephonyManager;",
            "Landroid/content/ContentResolver;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/CarrierAssociatedAppEntry;",
            ">;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    const-string v6, "CarrierAppUtils"

    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    nop

    const-string/jumbo v0, "legacy_permission"

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/permission/LegacyPermissionManager;

    move-object/from16 v9, p4

    invoke-static {v4, v9, v5}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidatesHelper(ILjava/util/Set;Landroid/content/Context;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_397

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_30

    move-object v2, v3

    move-object/from16 v20, v7

    move-object/from16 v19, v10

    goto/16 :goto_39c

    :cond_30
    move-object/from16 v11, p5

    invoke-static {v4, v11, v5}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAssociatedAppsHelper(ILjava/util/Map;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    const-string v14, "carrier_apps_handled"

    const/4 v15, 0x0

    invoke-static {v3, v14, v15, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-eqz v9, :cond_4d

    const/16 v16, 0x1

    goto :goto_4f

    :cond_4d
    move/from16 v16, v15

    :goto_4f
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v9, v15, :cond_55

    const/4 v15, 0x1

    goto :goto_56

    :cond_55
    const/4 v15, 0x0

    :goto_56
    :try_start_56
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_5a
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18
    :try_end_5e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_56 .. :try_end_5e} :catch_389

    if-eqz v18, :cond_33c

    :try_start_60
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ApplicationInfo;
    :try_end_66
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_60 .. :try_end_66} :catch_332

    move-object/from16 v19, v18

    move-object/from16 v0, v19

    move-object/from16 v19, v10

    :try_start_6c
    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_6e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6c .. :try_end_6e} :catch_329

    if-eqz v2, :cond_81

    :try_start_70
    invoke-virtual {v2, v10}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v11
    :try_end_74
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_70 .. :try_end_74} :catch_79

    const/4 v2, 0x1

    if-ne v11, v2, :cond_81

    const/4 v2, 0x1

    goto :goto_82

    :catch_79
    move-exception v0

    move-object v2, v3

    move-object/from16 v20, v7

    move-object/from16 v21, v12

    goto/16 :goto_391

    :cond_81
    const/4 v2, 0x0

    :goto_82
    const/4 v11, 0x0

    :try_start_83
    invoke-virtual {v7, v10, v11}, Landroid/content/pm/PackageManager;->setSystemAppState(Ljava/lang/String;I)V

    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;
    :try_end_8c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_83 .. :try_end_8c} :catch_329

    if-eqz v11, :cond_ca

    :try_start_8e
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_92
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_bd

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;
    :try_end_9e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8e .. :try_end_9e} :catch_c2

    move-object/from16 v22, v21

    move-object/from16 v21, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v8

    :try_start_a6
    iget-object v8, v12, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v12

    const/4 v12, 0x0

    invoke-virtual {v7, v8, v12}, Landroid/content/pm/PackageManager;->setSystemAppState(Ljava/lang/String;I)V
    :try_end_b0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a6 .. :try_end_b0} :catch_b5

    move-object/from16 v12, v21

    move-object/from16 v8, v22

    goto :goto_92

    :catch_b5
    move-exception v0

    move-object v2, v3

    move-object/from16 v20, v7

    move-object/from16 v8, v22

    goto/16 :goto_391

    :cond_bd
    move-object/from16 v22, v8

    move-object/from16 v21, v12

    goto :goto_ce

    :catch_c2
    move-exception v0

    move-object/from16 v21, v12

    move-object v2, v3

    move-object/from16 v20, v7

    goto/16 :goto_391

    :cond_ca
    move-object/from16 v22, v8

    move-object/from16 v21, v12

    :goto_ce
    :try_start_ce
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    const/4 v12, 0x0

    invoke-virtual {v5, v8, v12}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v8
    :try_end_df
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ce .. :try_end_df} :catch_320

    const-string v12, "Update associated state ("

    move-object/from16 v20, v7

    const-string v7, "Update state ("

    const/high16 v23, 0x800000

    if-eqz v2, :cond_200

    :try_start_e9
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierAppUtils;->isUpdatedSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v24
    :try_end_ed
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e9 .. :try_end_ed} :catch_1f9

    move/from16 v25, v2

    const-string v2, "): ENABLED for user "

    const/4 v3, 0x4

    if-nez v24, :cond_f6

    if-eqz v8, :cond_106

    :cond_f6
    if-eq v8, v3, :cond_106

    :try_start_f8
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_fa
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f8 .. :try_end_fa} :catch_ff

    and-int v3, v3, v23

    if-nez v3, :cond_144

    goto :goto_106

    :catch_ff
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v8, v22

    goto/16 :goto_391

    :cond_106
    :goto_106
    :try_start_106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v7, 0x2

    invoke-virtual {v3, v10, v7}, Landroid/content/pm/PackageManager;->setSystemAppState(Ljava/lang/String;I)V

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v7, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v7, 0x1

    invoke-virtual {v3, v10, v7, v7}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_144
    if-eqz v11, :cond_1eb

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;

    nop

    move-object/from16 v27, v3

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    move-object/from16 v28, v14

    const/4 v14, 0x0

    invoke-virtual {v5, v3, v14}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v14, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v14}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    iget-object v14, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_174
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_106 .. :try_end_174} :catch_1f9

    and-int v14, v14, v23

    if-eqz v14, :cond_17a

    const/4 v14, 0x1

    goto :goto_17b

    :cond_17a
    const/4 v14, 0x0

    :goto_17b
    if-eqz v3, :cond_189

    move/from16 v29, v9

    const/4 v9, 0x4

    if-eq v3, v9, :cond_18c

    if-nez v14, :cond_185

    goto :goto_18c

    :cond_185
    move-object/from16 v31, v2

    const/4 v2, 0x1

    goto :goto_1db

    :cond_189
    move/from16 v29, v9

    const/4 v9, 0x4

    :cond_18c
    :goto_18c
    :try_start_18c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v30, v3

    iget-object v3, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v9, 0x0

    invoke-virtual {v5, v3, v9}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v9, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v2

    const/4 v2, 0x2

    invoke-virtual {v3, v9, v2}, Landroid/content/pm/PackageManager;->setSystemAppState(Ljava/lang/String;I)V

    nop

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v9, 0x0

    invoke-virtual {v5, v1, v9, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v9, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v3, v9, v2, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :goto_1db
    move-object/from16 v3, v27

    move-object/from16 v14, v28

    move/from16 v9, v29

    move-object/from16 v2, v31

    goto/16 :goto_14a

    :cond_1e5
    move/from16 v29, v9

    move-object/from16 v28, v14

    const/4 v2, 0x1

    goto :goto_1f0

    :cond_1eb
    move/from16 v29, v9

    move-object/from16 v28, v14

    const/4 v2, 0x1

    :goto_1f0
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18c .. :try_end_1f5} :catch_245

    move/from16 v9, v29

    goto/16 :goto_303

    :catch_1f9
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v8, v22

    goto/16 :goto_391

    :cond_200
    move/from16 v25, v2

    move/from16 v29, v9

    move-object/from16 v28, v14

    const/4 v2, 0x1

    :try_start_207
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierAppUtils;->isUpdatedSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3
    :try_end_20b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_207 .. :try_end_20b} :catch_317

    const/4 v9, 0x3

    const-string v14, "): DISABLED_UNTIL_USED for user "

    if-nez v3, :cond_24e

    if-nez v8, :cond_24e

    :try_start_212
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int v3, v3, v23

    if-eqz v3, :cond_24e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v10, v9}, Landroid/content/pm/PackageManager;->setSystemAppState(Ljava/lang/String;I)V
    :try_end_244
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_212 .. :try_end_244} :catch_245

    goto :goto_24e

    :catch_245
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v8, v22

    move/from16 v9, v29

    goto/16 :goto_391

    :cond_24e
    :goto_24e
    if-eqz v11, :cond_2ff

    :try_start_250
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_254
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2fa

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;

    if-eqz v16, :cond_281

    if-nez v15, :cond_27b

    iget v2, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->addedInSdk:I

    const/4 v9, -0x1

    if-eq v2, v9, :cond_27b

    iget v2, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->addedInSdk:I
    :try_end_26b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_250 .. :try_end_26b} :catch_317

    move/from16 v9, v29

    if-le v2, v9, :cond_278

    :try_start_26f
    iget v2, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->addedInSdk:I

    move-object/from16 v26, v0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v2, v0, :cond_27f

    goto :goto_285

    :cond_278
    move-object/from16 v26, v0

    goto :goto_27f

    :cond_27b
    move-object/from16 v26, v0

    move/from16 v9, v29

    :cond_27f
    :goto_27f
    const/4 v0, 0x0

    goto :goto_286

    :cond_281
    move-object/from16 v26, v0

    move/from16 v9, v29

    :goto_285
    const/4 v0, 0x1

    :goto_286
    nop

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {v5, v2, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    iget-object v2, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int v2, v2, v23

    if-eqz v2, :cond_2a6

    const/4 v2, 0x1

    goto :goto_2a7

    :cond_2a6
    const/4 v2, 0x0

    :goto_2a7
    if-eqz v0, :cond_2e9

    if-nez v1, :cond_2e9

    if-eqz v2, :cond_2e9

    move/from16 v27, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v29, v1

    iget-object v1, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move/from16 v30, v2

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->setSystemAppState(Ljava/lang/String;I)V
    :try_end_2e8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26f .. :try_end_2e8} :catch_ff

    goto :goto_2f0

    :cond_2e9
    move/from16 v27, v0

    move/from16 v29, v1

    move/from16 v30, v2

    const/4 v2, 0x3

    :goto_2f0
    move-object/from16 v1, p0

    move/from16 v29, v9

    move-object/from16 v0, v26

    move v9, v2

    const/4 v2, 0x1

    goto/16 :goto_254

    :cond_2fa
    move-object/from16 v26, v0

    move/from16 v9, v29

    goto :goto_303

    :cond_2ff
    move-object/from16 v26, v0

    move/from16 v9, v29

    :goto_303
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v11, p5

    move-object/from16 v10, v19

    move-object/from16 v7, v20

    move-object/from16 v12, v21

    move-object/from16 v8, v22

    move-object/from16 v14, v28

    goto/16 :goto_5a

    :catch_317
    move-exception v0

    move/from16 v9, v29

    move-object/from16 v2, p2

    move-object/from16 v8, v22

    goto/16 :goto_391

    :catch_320
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v2, p2

    move-object/from16 v8, v22

    goto/16 :goto_391

    :catch_329
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v21, v12

    move-object/from16 v2, p2

    goto/16 :goto_391

    :catch_332
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v19, v10

    move-object/from16 v21, v12

    move-object/from16 v2, p2

    goto :goto_391

    :cond_33c
    move-object/from16 v20, v7

    move-object/from16 v22, v8

    move-object/from16 v19, v10

    move-object/from16 v21, v12

    move-object/from16 v28, v14

    if-eqz v16, :cond_34e

    if-nez v15, :cond_34b

    goto :goto_34e

    :cond_34b
    move-object/from16 v2, p2

    goto :goto_35b

    :cond_34e
    :goto_34e
    :try_start_34e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentResolver;->getUserId()I

    move-result v1
    :try_end_354
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_34e .. :try_end_354} :catch_383

    move-object/from16 v2, p2

    move-object/from16 v3, v28

    :try_start_358
    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_35b
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37e

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v13, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    nop

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/util/TelephonyUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/android/internal/telephony/CarrierAppUtils$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/android/internal/telephony/CarrierAppUtils$$ExternalSyntheticLambda0;-><init>()V
    :try_end_376
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_358 .. :try_end_376} :catch_381

    move-object/from16 v8, v22

    :try_start_378
    invoke-virtual {v8, v0, v1, v3, v7}, Landroid/permission/LegacyPermissionManager;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_37b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_378 .. :try_end_37b} :catch_37c

    goto :goto_380

    :catch_37c
    move-exception v0

    goto :goto_391

    :cond_37e
    move-object/from16 v8, v22

    :goto_380
    goto :goto_396

    :catch_381
    move-exception v0

    goto :goto_386

    :catch_383
    move-exception v0

    move-object/from16 v2, p2

    :goto_386
    move-object/from16 v8, v22

    goto :goto_391

    :catch_389
    move-exception v0

    move-object v2, v3

    move-object/from16 v20, v7

    move-object/from16 v19, v10

    move-object/from16 v21, v12

    :goto_391
    const-string v1, "Could not reach PackageManager"

    invoke-static {v6, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_396
    return-void

    :cond_397
    move-object v2, v3

    move-object/from16 v20, v7

    move-object/from16 v19, v10

    :goto_39c
    return-void
.end method

.method private static getApplicationInfoIfSystemApp(ILjava/lang/String;Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .registers 6

    :try_start_0
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x20108000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_14} :catch_18

    if-eqz v0, :cond_17

    return-object v0

    :cond_17
    goto :goto_20

    :catch_18
    move-exception v0

    const-string v1, "CarrierAppUtils"

    const-string v2, "Could not reach PackageManager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getContentResolverForUser(Landroid/content/Context;I)Landroid/content/ContentResolver;
    .registers 4

    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    return-object v1
.end method

.method public static getDefaultCarrierAppCandidates(ILandroid/content/Context;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/os/SystemConfigManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemConfigManager;

    invoke-virtual {v0}, Landroid/os/SystemConfigManager;->getDisabledUntilUsedPreinstalledCarrierApps()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidatesHelper(ILjava/util/Set;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static getDefaultCarrierAppCandidatesHelper(ILjava/util/Set;Landroid/content/Context;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2e

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2e

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    nop

    invoke-static {p0, v2, p2}, Lcom/android/internal/telephony/CarrierAppUtils;->getApplicationInfoIfSystemApp(ILjava/lang/String;Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_2c

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    goto :goto_16

    :cond_2d
    return-object v0

    :cond_2e
    :goto_2e
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDefaultCarrierApps(Landroid/telephony/TelephonyManager;ILandroid/content/Context;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/TelephonyManager;",
            "I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidates(ILandroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_30

    :cond_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_13
    if-ltz v1, :cond_2f

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    nop

    invoke-virtual {p0, v4}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v2, :cond_26

    move v5, v2

    goto :goto_27

    :cond_26
    const/4 v5, 0x0

    :goto_27
    if-nez v5, :cond_2c

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    :cond_2f
    return-object v0

    :cond_30
    :goto_30
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getDefaultCarrierAssociatedAppsHelper(ILjava/util/Map;Landroid/content/Context;)Ljava/util/Map;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/CarrierAssociatedAppEntry;",
            ">;>;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;",
            ">;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v6, 0x0

    :goto_2a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_62

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/CarrierAssociatedAppEntry;

    iget-object v8, v7, Landroid/os/CarrierAssociatedAppEntry;->packageName:Ljava/lang/String;

    invoke-static {p0, v8, p2}, Lcom/android/internal/telephony/CarrierAppUtils;->getApplicationInfoIfSystemApp(ILjava/lang/String;Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    if-eqz v8, :cond_5f

    invoke-static {v8}, Lcom/android/internal/telephony/CarrierAppUtils;->isUpdatedSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v9

    if-nez v9, :cond_5f

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-nez v9, :cond_55

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v10

    invoke-interface {v1, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_55
    new-instance v10, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;

    iget v11, v7, Landroid/os/CarrierAssociatedAppEntry;->addedInSdk:I

    invoke-direct {v10, v8, v11}, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5f
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    :cond_62
    goto :goto_11

    :cond_63
    return-object v1
.end method

.method private static isUpdatedSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic lambda$disableCarrierAppsUntilPrivileged$0(Ljava/lang/Boolean;)V
    .registers 1

    return-void
.end method
