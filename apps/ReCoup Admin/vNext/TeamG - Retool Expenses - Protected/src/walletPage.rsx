<Screen
  id="walletPage"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
>
  <SqlQueryUnified
    id="getBudgets"
    notificationDuration={4.5}
    query={include("../lib/getBudgets.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="3b6461f0-33d5-4eb1-8abe-c0d7744c90f1"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getExpenses"
    isMultiplayerEdited={false}
    query={include("../lib/getExpenses.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="3b6461f0-33d5-4eb1-8abe-c0d7744c90f1"
    warningCodes={[]}
  />
  <connectResource id="query1" _componentId="listView1" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Button
      id="button1"
      iconBefore="bold/interface-add-1"
      style={{ background: "surfacePrimary", border: "rgba(0, 0, 0, 0.24)" }}
      text="Request Limit"
    />
    <Button
      id="button5"
      heightType="auto"
      iconBefore="bold/interface-add-1"
      style={{ background: "surfacePrimary", border: "rgba(0, 0, 0, 0.24)" }}
      text="Request a new reimbursement"
    />
    <Text id="text2" value="## My Wallet" verticalAlign="center" />
    <ListViewBeta
      id="listView1"
      _primaryKeys="{{ item.id }}"
      data="{{ getBudgets.data }}"
      heightType="auto"
      itemWidth="200px"
      margin="0"
      numColumns={3}
      padding="0"
    >
      <Container
        id="container1"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        margin="0"
        padding="12px"
        showBody={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="containerTitle1"
            margin="0"
            value="###### {{ item.name }}"
            verticalAlign="center"
          />
        </Header>
        <View id="dbace" viewKey="View 1">
          <Icon
            id="icon1"
            horizontalAlign="center"
            icon="bold/money-cash-dollar-coin"
            style={{}}
          />
          <Text
            id="text1"
            value="${{ item.limit - item.spent}} USD available"
            verticalAlign="center"
          />
        </View>
      </Container>
    </ListViewBeta>
    <TextInput
      id="table1SearchFilter"
      hideLabel={true}
      label=""
      placeholder="Search or filter..."
    />
    <Table
      id="table1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getExpenses.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      heightType="auto"
      rowHeight="medium"
      searchTerm="{{ table1SearchFilter.value }}"
      showBorder={true}
      showFooter={true}
      showHeader={true}
    >
      <Column
        id="bae50"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={31.1875}
      />
      <Column
        id="6c626"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="date"
        label="Date"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="553e0"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="merchant"
        label="Merchant"
        placeholder="Select option"
        position="center"
        size={100}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="1040e"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="employee"
        label="Employee"
        placeholder="Select option"
        position="center"
        size={100}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="657b2"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="type"
        label="Type"
        placeholder="Select option"
        position="center"
        size={100}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="952c1"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="budget"
        label="Budget"
        placeholder="Select option"
        position="center"
        size={100}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="4a1ea"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="memo"
        label="Memo"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="b63d9"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="payment_status"
        label="Payment status"
        placeholder="Select option"
        position="center"
        size={100}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="f57e3"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="amount"
        label="Amount"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="a9629"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="reimburse_date"
        label="Reimburse date"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </Frame>
</Screen>
